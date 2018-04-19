<div class="container border-top border-left">
<?php if (count($usertypes)) foreach($usertypes as $usertype) { ?>
  <div class="row row-border">
    <div class="col border-bottom border-right"><a href='?controller=posts&action=show&id=<?php echo $usertype->userid; ?>'>View</a></div>
    <div class="col border-bottom border-right"><?php echo $usertype->usertype; ?></div>
  </div> 
<?php } ?>
</div>
