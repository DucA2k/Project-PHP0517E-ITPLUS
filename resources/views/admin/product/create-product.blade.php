
@extends('layouts.layout-admin')
@section('main')
<script type="text/javascript">
  $(document).ready(function(){
    $('#phone-config').hide();
    $('#laptop-config').hide();
    $('#tv-config').hide();
    $('#categoryId').on('change', function(){
      if($('#categoryId').val() == '1') {
        $('#phone-config').show();
        $('#laptop-config').hide();
        $('#tv-config').hide();
      }
      if($('#categoryId').val() == '2') {
        $('#phone-config').hide();
        $('#laptop-config').show();
        $('#tv-config').hide();
      }
      if($('#categoryId').val() == '3') {
        $('#phone-config').hide();
        $('#laptop-config').hide();
        $('#tv-config').show();
      }
    });
  });
</script>
<div class="row mt">
              <div class="col-lg-6">
                   <div class="form-panel">
                      <h4 class="mb"><i class="fa fa-angle-right"></i> Tạo Mới Sản Phẩm</h4>
                  
                      {!!  Form::open(['method'=>'POST','url'=>'admin/product/create','class'=>'form-horizontal style-form','files'=>true])  !!}
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Name</label>
                              <div class="col-sm-10">
                                  {!!  Form::text('name',null,['class'=>'form-control','placeholder'=>'Input name product ...'])  !!}
                                   {!! $errors->first('name','<p style="color:red">:message</p>') !!}
                              </div>
                               
                              
                            </div>
                  
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Price</label>
                              <div class="col-sm-10">
                                  {!!  Form::text('price',null,['class'=>'form-control','placeholder'=>'Input price product ...'])  !!}
                              </div>
                              {!!  $errors->first('price','<p style="color:red">:message</p>') !!}
                            </div>
                  
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Discount</label>
                              <div class="col-sm-10">
                                  {!!  Form::text('discount','0',['class'=>'form-control','placeholder'=>'Input discount product ...'])  !!}
                              </div>
                              {!!  $errors->first('discount','<p style="color:red">:message</p>') !!}
                            </div>
                  
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Count</label>
                              <div class="col-sm-10">
                                  {!!  Form::text('count',null,['class'=>'form-control','placeholder'=>'Input count product ...'])  !!}
                              </div>
                              {!!  $errors->first('count','<p style="color:red">:message</p>') !!}
                            </div>
                  
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Description</label>
                              <div class="col-sm-10">
                                  {!!  Form::textarea('description',null,['class'=>'form-control','style'=>'height:100px'])  !!}
                              </div>
                              {!!  $errors->first('description','<p style="color:red">:message</p>') !!}
                            </div>
                  
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Content</label>
                              <div class="col-sm-10">
                                  {!!  Form::textarea('content',null,['class'=>'form-control','style'=>'height:100px'])  !!}
                              </div>
                              {!!  $errors->first('content','<p style="color:red">:message</p>') !!}
                            </div>

                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Status</label>
                              <div class="col-sm-10">
                                  {!! Form::select('status',['0'=>'Yes','1'=>'No'],null, ['placeholder' => 'Pick a status...']) !!}
                              </div>
                              {!!  $errors->first('status','<p style="color:red">:message</p>') !!}
                            </div>

                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Thumbnail</label>
                              <div class="col-sm-10">
                                  {!!  Form::file('thumbnail',['class'=>'form-control'])  !!}
                              </div>
                              {!!  $errors->first('thumbnail','<p style="color:red">:message</p>') !!}
                            </div>
                  
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Category_id</label>
                              <div class="col-sm-10">
                  <select name="categoryId" id="categoryId" required>
                    <option value="" disabled selected>Pick a category_id...</option>
                    <option value="1">Phone</option>
                    <option value="2">Laptop</option>
                    <option value="3">TV</option>
                  </select>
                              </div>
                              {!!  $errors->first('categoryId','<p style="color:red">:message</p>') !!}
                            </div>
                            
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Config_id</label>
                              <div class="col-sm-10">
                                   {!! Form::select('configId',['1'=>'Phone','2'=>'Laptop','3'=>'TV'],null, ['placeholder' => 'Pick a config_id...']) !!}
                              </div>
                              {!!  $errors->first('configId','<p style="color:red">:message</p>') !!}
                            </div>
            <div id="phone-config">
              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Condition</label>
                              <div class="col-sm-10">
                  <input type="text" name="condition">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Warranty Period</label>
                              <div class="col-sm-10">
                  <input type="text" name="warranty">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Network Connection</label>
                              <div class="col-sm-10">
                  <input type="text" name="network">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Tablet Connection</label>
                              <div class="col-sm-10">
                  <input type="text" name="tablet">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Color</label>
                              <div class="col-sm-10">
                  <input type="text" name="color">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Screen size</label>
                              <div class="col-sm-10">
                  <input type="text" name="screen">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Model</label>
                              <div class="col-sm-10">
                  <input type="text" name="model">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Operating system version</label>
                              <div class="col-sm-10">
                  <input type="text" name="osv">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Sim slot</label>
                              <div class="col-sm-10">
                  <input type="text" name="sim">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Ram memory</label>
                              <div class="col-sm-10">
                  <input type="text" name="ram">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Product size</label>
                              <div class="col-sm-10">
                  <input type="text" name="product">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Expendable Memory</label>
                              <div class="col-sm-10">
                  <input type="text" name="em">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Phone Features</label>
                              <div class="col-sm-10">
                  <input type="text" name="pf">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Storage Capacity</label>
                              <div class="col-sm-10">
                  <input type="text" name="sc">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Screen Resolution</label>
                              <div class="col-sm-10">
                  <input type="text" name="sr">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Screen type</label>
                              <div class="col-sm-10">
                  <input type="text" name="st">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Core</label>
                              <div class="col-sm-10">
                  <input type="text" name="core">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Weight</label>
                              <div class="col-sm-10">
                  <input type="text" name="weight">
                              </div>
              </div>
            </div>

            <div id="laptop-config">
              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Processor</label>
                              <div class="col-sm-10">
                  <input type="text" name="processor">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Operating system</label>
                              <div class="col-sm-10">
                  <input type="text" name="os">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Memory</label>
                              <div class="col-sm-10">
                  <input type="text" name="laptopmemory">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Hard drive</label>
                              <div class="col-sm-10">
                  <input type="text" name="drive">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Video card</label>
                              <div class="col-sm-10">
                  <input type="text" name="card">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Display</label>
                              <div class="col-sm-10">
                  <input type="text" name="display">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Primary battery</label>
                              <div class="col-sm-10">
                  <input type="text" name="laptopbattery">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Warranty</label>
                              <div class="col-sm-10">
                  <input type="text" name="laptopwarranty">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Ports</label>
                              <div class="col-sm-10">
                  <input type="text" name="ports">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Slots</label>
                              <div class="col-sm-10">
                  <input type="text" name="slots">
                              </div>
              </div>
            </div>

            <div id="tv-config">
              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Screen size</label>
                              <div class="col-sm-10">
                  <input type="text" name="tvscreen">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Resolution</label>
                              <div class="col-sm-10">
                  <input type="text" name="tvresolution">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Processor</label>
                              <div class="col-sm-10">
                  <input type="text" name="tvprocessor">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Wifi-built-in</label>
                              <div class="col-sm-10">
                  <input type="text" name="wifi">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Web browser</label>
                              <div class="col-sm-10">
                  <input type="text" name="web">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Speaker System</label>
                              <div class="col-sm-10">
                  <input type="text" name="speaker">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">HDMI</label>
                              <div class="col-sm-10">
                  <input type="text" name="hdmi">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">USB</label>
                              <div class="col-sm-10">
                  <input type="text" name="usb">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Weight</label>
                              <div class="col-sm-10">
                  <input type="text" name="tvweight">
                              </div>
              </div>

              <div class="form-group">
                <label class="col-sm-2 col-sm-2 control-label">Warranty</label>
                              <div class="col-sm-10">
                  <input type="text" name="tvwarranty">
                              </div>
              </div>
            </div>

                        <div class="form-group">
                              {!!  Form::submit('Create',['class'=>'btn btn-primary']) !!}
                              {!!  Form::reset('Reset',['class'=>'btn btn-primary']) !!}
                        </div>
                        
                          
                      {!!  Form::close()  !!}
                  </div> 
              </div><!-- col-lg-12-->       
            </div><!-- /row -->
@endsection