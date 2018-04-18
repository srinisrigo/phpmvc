<?php if (count($usertypes)) foreach($usertypes as $usertype) { ?>
  <div class="row">
    <div class="col-sm-1"><a href='?controller=posts&action=show&id=<?php echo $usertype->userid; ?>'>View</a></div>
    <div class="col-sm-7"><?php echo $usertype->usertype; ?></div>
  </div> 
<?php } ?>
