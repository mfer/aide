<div class="navbar navbar-default" id="subnav">
  <div class="col-md-12">
    <div class="navbar-header">
      <a href="#" style="margin-left:15px;" class="navbar-btn btn btn-default btn-plus dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-home" style="color:#dd1111;"></i> General Settings <small><i class="glyphicon glyphicon-chevron-down"></i></small></a>
      <ul class="nav dropdown-menu">
        <li><a href="<?php echo $this->route_url('password'); ?>"><i class="glyphicon glyphicon-inbox" style="color:#11dd11;"></i> Update Password</a></li>
        <li><a href="<?php echo $this->route_url('settings'); ?>"><i class="glyphicon glyphicon-cog" style="color:#dd1111;"></i> Settings</a></li>
      </ul>
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse2">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
    <div class="collapse navbar-collapse" id="navbar-collapse2">
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="<?php echo $this->route_url('index'); ?>">~admin</a></li>
        <?php //$this->render_boards(); ?>
      </ul>
    </div>  
  </div> 
</div>  

<!--main-->
<div class="container" id="main">
  <div class="row">
    <div class="col-md-4 col-sm-6">
      <div class="well"> 
        <h4>Site Information</h4>
        <p class="error"><?php echo $model['error']; ?></p>
        <form method="post">
          <label for="blog_name">Site Name</label>
          <input type="text" name="blog_name" required maxlength="63" value="<?php echo $model['blog_name']; ?>" />
          <label for="display_name">Your User Name</label>
          <input type="text" name="display_name" required maxlength="63" value="<?php echo $model['display_name']; ?>" />
          <label for="email">Email</label>
          <input type="email" name="email" required maxlength="250" value="<?php echo $model['email']; ?>" />
          <span class="input-group-btn"><button class="btn btn-lg btn-primary" type="submit" name="submit">Save Site Information</button></span>
        </form>
      </div>
    </div>
  </div>
</div>  