<!DOCTYPE html>
<html>

<head>
    @include('admin.css')
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

    <script src="https://cdn.ckeditor.com/ckeditor5/41.4.2/classic/ckeditor.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

    <!-- default icons used in the plugin are from Bootstrap 5.x icon library (which can be enabled by loading CSS below) -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.min.css" crossorigin="anonymous">

    <!-- alternatively you can use the font awesome icon library if using with `fas` theme (or Bootstrap 4.x) by uncommenting below. -->
    <!-- link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" crossorigin="anonymous" -->

    <!-- the fileinput plugin styling CSS file -->
    <link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />

    <!-- if using RTL (Right-To-Left) orientation, load the RTL CSS file after fileinput.css by uncommenting below -->
    <!-- link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/css/fileinput-rtl.min.css" media="all" rel="stylesheet" type="text/css" /-->

    <!-- the jQuery Library -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>

    <!-- buffer.min.js and filetype.min.js are necessary in the order listed for advanced mime type parsing and more correct
      preview. This is a feature available since v5.5.0 and is needed if you want to ensure file mime type is parsed 
      correctly even if the local file's extension is named incorrectly. This will ensure more correct preview of the
      selected file (note: this will involve a small processing overhead in scanning of file contents locally). If you 
      do not load these scripts then the mime type parsing will largely be derived using the extension in the filename
      and some basic file content parsing signatures. -->
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/js/plugins/buffer.min.js" type="text/javascript"></script>
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/js/plugins/filetype.min.js" type="text/javascript"></script>

    <!-- piexif.min.js is needed for auto orienting image files OR when restoring exif data in resized images and when you
     wish to resize images before upload. This must be loaded before fileinput.min.js -->
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/js/plugins/piexif.min.js" type="text/javascript"></script>

    <!-- sortable.min.js is only needed if you wish to sort / rearrange files in initial preview. 
     This must be loaded before fileinput.min.js -->
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/js/plugins/sortable.min.js" type="text/javascript"></script>

    <!-- bootstrap.bundle.min.js below is needed if you wish to zoom and preview file content in a detail modal
     dialog. bootstrap 5.x or 4.x is supported. You can also use the bootstrap js 3.3.x versions. -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>

    <!-- the main fileinput plugin script JS file -->
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/js/fileinput.min.js"></script>

    <!-- following theme script is needed to use the Font Awesome 5.x theme (`fa5`). Uncomment if needed. -->
    <!-- script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/themes/fa5/theme.min.js"></script -->

    <!-- optionally if you need translation for your language then include the locale file as mentioned below (replace LANG.js with your language locale) -->
    <script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.5.0/js/locales/LANG.js"></script>


</head>

<body>
    @include('admin.header')

    @include('admin.sidebar')
    <!-- Sidebar Navigation end-->
    <div class="page-content">
        <div class="page-header">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-8 col-md-8 mx-auto">
                        <div class="block">
                            <div class="title"><strong>Add News</strong></div>
                            <div class="block-body">
                                <form class="form" action="{{url('update_news',$data->id)}}" method="post" enctype="multipart/form-data">

                                    @csrf

                                    <div class="form-group">
                                        <label for="title">Title</label>
                                        <input id="title" name="title" type="text" placeholder="" class="form-control" value="{{$data->title}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="content">Content</label>
                                        <textarea name="content" id="content" class="form-control" ></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="author">Author</label>
                                        <input id="author" name="author" type="text" class="form-control" value="{{$data->author}}">
                                    </div>


                                    <div class="form-group">
                                        <label for="club_id">Choose Club</label>
                                        <select id="club_id" name="club_id" class="form-control">
                                            @foreach ($club_list as $item )
                                            <option value="{{ $item->id }}" {{ $data->club_id == $item->id ? 'selected' : '' }}>
                                                {{ $item->club_name }}
                                            </option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="player_id">Choose Player</label>
                                        <select id="player_id" name="player_id" class="form-control">
                                            @foreach ($player_list as $item )
                                            <option value="{{ $item->id }}" {{ $data->player_id == $item->id ? 'selected' : '' }}>
                                                {{ $item->player_name }}
                                            </option>
                                            @endforeach
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="league_id">Choose League</label>
                                        <select id="league_id" name="league_id" class="form-control">
                                            @foreach ($league_list as $item )
                                            <option value="{{ $item->id }}" {{ $data->league_id == $item->id ? 'selected' : '' }}>
                                                {{ $item->league_name }}
                                            </option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <!-- <div class="form-group">
                                        <img id height="120" width="120" src="/news_image/{{$data->linkimage}}" alt="">
                                    </div> -->
                                    <div class="form-group">
                                        <label for="image_url">Image URL</label>
                                        <input id="image_url" name="image_url" type="text" class="form-control" value="{{$data->image_url}}">
                                    </div>
                                    <div class="form-group">
                                        <label for="current_image">Current Image</label>
                                        <img id="current_image" height="120" width="120" src="/news_image/{{$data->linkimage}}" alt="">
                                    </div>
                                    <div class="form-group">
                                        <label for="input-b1">Choose Image</label>
                                        <input id="input-b1" name="image" type="file" class="file" data-browse-on-zone-click="true">
                                    </div>

                                    <div class="form-group">
                                        <input type="submit" value="Update News" class="btn btn-primary">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>





            </div>
        </div>
    </div>
    <script>
        let editors = [];
        ClassicEditor
            .create(document.querySelector('#content'))
            .then(newEditor => {
                editors.push(newEditor);
                let jsonString = '@json($data->content)';
                // Loại bỏ dấu ngoặc kép đầu và cuối
                let formattedString = jsonString.slice(1, -1);
                // Thiết lập dữ liệu cho ClassicEditor
                editors[0].setData(formattedString);
            })
            .catch(error => {
                console.error(error);
            });
    </script>
    <!-- JavaScript files-->
    @include('admin.footer')
</body>

</html>