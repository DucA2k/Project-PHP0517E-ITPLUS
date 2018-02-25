@extends('layouts.layout-admin')
@section('content')
<script type="text/javascript">
  $(document).ready(function(){
    $('#selectbox').on('change', function(){
    if($('#selectbox').val() == 'all' ) {
      $('.processed').show();
      $('.pending').show();
    } else if($('#selectbox').val() == 'processed') {
        $('.processed').show();
        $('.pending').hide();
    } else {
        $('.processed').hide();
        $('.pending').show();
      }
    });
  });
</script>
<section id="main-content">
  <section class="wrapper site-min-height">
    <h3><i class="fa fa-angle-right"></i> List review </h3>
    <div class="row mt">
      <div class="col-lg-12">
        {!! Form::open([ 'method' => 'GET', 'url' => 'admin/review/show']) !!}
          {!! Form::text('search', null, ['id' => 'search',
                                          'placeholder' => 'Enter a keyword',
                                          'class' => 'form-control']) !!}
          {!! Form::submit('Seach', ['class' => 'btn btn-primary']) !!}
        {!! Form::close() !!}
        <br><br>
        <label for="selectbox"><h4 class="fa fa-search"> Status</h4></label>
        <select name="selectbox" id="selectbox" class="form-control">
          <option value="all">All</option>
          <option value="processed">Processed</option>
          <option value="pending">Pending</option>
        </select>
        
        <hr>
        <table class="table table-striped table-advance">
          <tr>
            <th>No.</th>
            <th>Name</th>
            <th>Summary</th>
            <th>Content</th>
            <th>Status</th>
            <th>Action</th>
          </tr>
          @foreach($list as $item => $value)
            @if($value->status == 0)
            {!! Form::open(['method' => 'GET', 'url' => 'admin/review/' . $value->id . '/edit']) !!}
            <tr style="color: blue;" class="processed">
              <td>{{ $item+1 }}</td>
              <td>{{ $value->name }}</td>
              <td>{{ $value->summary }}</td>
              <td>{{ $value->content }}</td>
              <td>Processed</td>
              <td>
                <input class="" type="submit" value="Pending">
              </td>
            </tr>
            {!! Form::close() !!}
            @else
            {!! Form::open(['method' => 'GET', 'url' => 'admin/review/edit/' . $value->id]) !!}
            <tr style="color: red;" class="pending">
              <td>{{ $item+1 }}</td>
              <td>{{ $value->name }}</td>
              <td>{{ $value->summary }}</td>
              <td>{{ $value->content }}</td>
              <td>Pending</td>
              <td>
                <input class="" type="submit" value="Processed">
              </td>
            </tr>
            {!! Form::close() !!}
            @endif
          @endforeach
        </table>
      </div>
    </div>
  </section>
</section>

@endsection