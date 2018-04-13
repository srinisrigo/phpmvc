<p>Here is a list of all cpts:</p>

<?php foreach($cpts as $cpt) { ?>
  <p>
    <?php echo $cpt->display_code; ?>
    <a href='?controller=posts&action=show&id=<?php echo $cpt->id; ?>'>See content</a>
  </p>
<?php } ?>
