<?php

class SetupController extends Controller {
  protected $settings_redirect = FALSE;

  public function index() {
    $this->meta->title = 'Setup';
    
    $model = array(
      'site_name' => $this->post('site_name'),
      'email' => $this->post('email'),
      'display_name' => $this->post('display_name'),
      'password' => $this->post('password'),
      'error' => NULL
    );

    if(array_key_exists('submit', $_POST)) {
      $req = array();
      if(empty($model['site_name'])) {
        $req[] = 'site Name';
      }
      if(empty($model['email'])) {
        $req[] = 'Email';
      }
      if(empty($model['display_name'])) {
        $req[] = 'Your Name';
      }
      if(empty($model['password'])) {
        $req[] = 'Password';
      }
      if(!empty($req)) {
        $model['error'] = 'The following fields are required: ' . implode(', ', $req);
        return $this->partial($model);
      }

      if(!filter_var($model['email'], FILTER_VALIDATE_EMAIL)) {
        $model['error'] = 'Please enter a valid email address.';
        return $this->partial($model);
      }

      if(strlen($model['password']) < 6) {
        $model['error'] = 'Please enter a password that is at least 6 characters.';
        return $this->partial($model);
      }

      if($settings === NULL) {
        $settings = new setting();
        $settings->site_name = $model['site_name'];
        if(!$settings->insert()) {
          $model['error'] = 'Failed to create initial settings: ' . last_error();
          return $this->partial($model);
        }

        $account = new account();
        $account->display_name = $model['display_name'];
        $account->email = $model['email'];
        $account->password_salt = uniqid();
        $account->password_hash = hash('sha512', $model['password'] . $account->password_salt);
        if(!$account->insert()) {
          $model['error'] = 'Failed to create initial account: ' . last_error();
          return $this->partial($model);
        }

        $this->redirect(NULL, 'home');
      }
    }

    $this->partial($model);
  }
}

?>