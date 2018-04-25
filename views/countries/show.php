<form action="?controller=countries&action=validate&page=<?php echo $country->page; ?>" method="POST" class="form-main">
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text" id="code-addon1">Code</span>
        </div>
        <input type="hidden" name="id" value="<?php echo $country->countryid; ?>" />
        <input type="text" name="code" value="<?php echo $country->countrycode; ?>" class="form-control" placeholder="Code" aria-label="Code" aria-describedby="code-addon1" required autofocus>
    </div>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text" id="name-addon1">Name</span>
        </div>
        <input type="text" name="name" value="<?php echo $country->countryname; ?>" class="form-control" placeholder="Name" aria-label="Name" aria-describedby="name-addon1" required>
    </div>
    <div class="input-group">
        <div class="input-group-prepend">
            <span class="input-group-text" id="nationality-addon1">Nationality</span>
        </div>
        <input type="text" name="nationality" value="<?php echo $country->nationality; ?>" class="form-control" placeholder="Nationality" aria-label="Nationality" aria-describedby="nationality-addon1" required>
    </div>
    <div class="btn-group">
        <a href="?controller=countries&action=index&page=<?php echo $country->page; ?>" class="btn btn-danger">Cancel</a>
        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</form>
<div class="alert alert-warning <?php echo isset($country->warnings)? 'd-block':'d-none'; ?>" role="alert">
    <?php echo isset($country->warnings)? $country->warnings:''; ?>
</div>