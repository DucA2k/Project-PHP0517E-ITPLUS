@extends('layouts.layout-admin')
@section('main')
<div class="row mt site-min-height">
          		<div class="col-lg-6">
                   <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i>Create News</h4>
                  
                      {!!  Form::model($news,['method'=>'PATCH','url'=>'admin/news/'.$news->id,'class'=>'form-horizontal style-form','files'=>true])  !!}
                      		  <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Name</label>
                              <div class="col-sm-10">
                                  {!!  Form::text('name',$news->name,['class'=>'form-control','placeholder'=>'Input title name...'])  !!}
									                 {!! $errors->first('name','<p style="color:red">:message</p>') !!}
                              </div>
                          	</div>
                            
                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Thumbnail</label>
                              <div class="col-sm-10">
                                  {!!  Form::file('thumbnail',['class'=>'form-control'])  !!}
                              </div>
                              {!!  $errors->first('thumbnail','<p style="color:red">:message</p>') !!}
                            </div>
                            

                            <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Content</label>
                              <div class="col-sm-10">
                                  {!!  Form::textarea('content',$news->content,['class'=>'form-control','style'=>'height:100px'])  !!}
                              </div>
                              {!!  $errors->first('content','<p style="color:red">:message</p>') !!}
                            </div>

                            <div class="form-group">
                                  {!!  Form::submit('Update',['class'=>'btn btn-primary']) !!}
                                  {!!  Form::reset('Reset',['class'=>'btn btn-primary']) !!}
                            </div>
                        
                      		
                      {!!  Form::close()  !!}
                  </div> 
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
@endsection