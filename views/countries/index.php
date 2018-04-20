<table class="table table-bordered table-hover">
  <tfoot>  
      <td>
        <a href='?controller=countries&action=index&page=<?php echo $countries->page>1? $countries->page-1:$countries->page; ?>'>&#60;&#60;previous</a>
      </td> 
      <td colspan=2>
          <?php print_r($countries->records) ?> records
      </td>
      <td>
        <a href='?controller=countries&action=index&page=<?php echo $countries->pages>$countries->page? $countries->page+1:$countries->page; ?>'>next&#62;&#62;</a>
      </td>
  </tfoot>
  <?php foreach($countries->list as $country) { ?>
  <tbody>
    <tr>
      <td>
        <a href='?controller=countries&action=show&id=<?php echo $country->countryid; ?>'>View</a>
      </td>
      <td>
        <?php echo $country->countrycode; ?>
      </td>
      <td>
        <?php echo $country->countryname; ?>
      </td>
      <td>
        <?php echo $country->nationality; ?>
      </td>
    </tr>
  </tbody>
  <?php } ?>
</table>
