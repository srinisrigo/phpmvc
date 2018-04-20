<form action="index.php?countries=posts&action=index&page=<?php echo $countries->page; ?>" method="POST" class="form-main">
    <div class="row border-top border-left">
        <div class="col border-bottom border-right">
        </div>
        <div class="col border-bottom border-right">
            <div class="input-group">
                <input type="text" class="form-control input-search" placeholder="Search" />
                <span class="input-group-addon group-icon">
                    <span class="glyphicon glyphicon-user">
                    </span>
                </span>
            </div>
        </div>
        <div class="col border-bottom border-right">
            <div class="input-group">
                <input type="text" class="form-control input-search" placeholder="Search" />
                <span class="input-group-addon group-icon">
                    <span class="glyphicon glyphicon-user">
                    </span>
                </span>
            </div>
        </div>
        <div class="col border-bottom border-right">
            <div class="input-group">
                <input type="text" class="form-control input-search" placeholder="Search" />
                <span class="input-group-addon group-icon">
                    <span class="glyphicon glyphicon-user">
                    </span>
                </span>
            </div>
        </div>
    </div> 
</form>
<?php foreach($countries->list as $country) { ?>
  <div class="row border-top border-left">
    <div class="col border-bottom border-right">
        <a href='?controller=countries&action=show&id=<?php echo $country->countryid; ?>'>View</a>
    </div>
    <div class="col border-bottom border-right">
        <?php echo $country->countrycode; ?>
    </div>
    <div class="col border-bottom border-right">
        <?php echo $country->countryname; ?>
    </div>
    <div class="col border-bottom border-right">
        <?php echo $country->nationality; ?>
    </div>
  </div> 
<?php } ?>
<?php echo getFooter($countries, 'countries', 'index'); ?>