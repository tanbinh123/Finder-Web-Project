<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/profile.css">

    <link rel="icon" href="img/like.png">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"/>

    <script src="js/lib/jquery.js"></script>
    <script src="js/lib/semantic.js"></script>
    <script src="js/lib/Semantic-UI-Alert.js"></script>
    <title>My Profile | Dating, Make Friends & Meet New People</title>
</head>
<body>

<jsp:include page="../header.jsp"></jsp:include>
<div class="space">

</div>


<div class="container">

    <div class="side">
        <div>
            <button class="header" id="edit-profile-btn1">
                <div class="avatar">
                    <img src="${user.photos[0].link}" alt=""/>
                </div>
                <div class="title">My profile</div>
            </button>
        </div>
        <div class="side-btn">
            <button class="avatar1">
                <div class="title" id="logout-title">LOGOUT</div>
            </button>

        </div>
        <div class="side-btn">
            <button class="avatar1">
                <div class="title" id="version-title">VERSION 1.0</div>
            </button>
        </div>

        <div class="side-btn">
            <button class="avatar1">
                <div class="title" id="delete-title">DELETE ACCOUNT</div>
            </button>
        </div>


    </div>
    <div class="content1">
        <div class="card-edit">
            <div class="height-card">
                <div class="image-edit">
                    <ul class="image-edit-container">
                        <div class="image-container1">
                            <li class="image">
                                <div class="image-edit1">

                                   <%-- <img src="${user.photos[0].link}" alt="">--%>

                                    <c:choose>
                                        <c:when test="${user.photoLength!=null}">
                                            <img src="${user.photos[0].link}" alt="">
                                        </c:when>
                                        <c:when test="${user.photoLength==null}">
                                            <img src="img/minyoung.jpg" alt="">
                                        </c:when>
                                    </c:choose>
                                </div>
                                <div>
                                    <button class="btn-add1">+</button>
                                </div>
                            </li>
                            <li class="image">
                                <div class="image-edit1">
                                    <c:choose>
                                        <c:when test="${user.photoLength < 2}">
                                            <img src="" alt="" onerror="this.style.display='none'">
                                        </c:when>

                                        <c:otherwise>
                                            <img src="${user.photos[1].link}" alt="">
                                        </c:otherwise>
                                    </c:choose>


                                </div>
                                <div>
                                    <button class="">+</button>
                                </div>
                            </li>
                            <li class="image">
                                <div class="image-edit1" >

                                    <c:choose>
                                        <c:when test="${user.photoLength < 3}">
                                            <div id="imagePreview" >
                                                <img  src="" alt="" onerror="this.style.display='none'">
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <img src="${user.photos[2].link}" alt="">
                                        </c:otherwise>
                                    </c:choose>

                                    <img  src="" alt="" onerror="this.style.display='none'">
                                </div>
                                <div>
                                    <button class="">+</button>
                                </div>
                            </li>
                        </div>


                        <div class="image-container2">
                            <li class="image">
                                <div class="image-edit1">
                                    <c:choose>
                                        <c:when test="${user.photoLength < 4}">
                                            <div id="imagePreview">
                                                <img  src="" alt="" onerror="this.style.display='none'">
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <img src="${user.photos[3].link}" alt="">
                                        </c:otherwise>
                                    </c:choose>

                                </div>
                                <div>
                                    <button class="">+</button>
                                </div>
                            </li>
                            <li class="image">
                                <div class="image-edit1">
                                    <c:choose>
                                        <c:when test="${user.photoLength < 5}">
                                            <div id="imagePreview">
                                                <img  src="" alt="" onerror="this.style.display='none'">
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <img src="${user.photos[4].link}" alt="">
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div>
                                    <button class="">+</button>
                                </div>
                            </li>
                            <li class="image">
                                <div class="image-edit1">
                                    <c:choose>
                                        <c:when test="${user.photoLength < 6}">
                                            <div id="imagePreview">
                                                <img  src="" alt="" onerror="this.style.display='none'">
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <img src="${user.photos[5].link}" alt="">
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div>
                                    <button class="">+</button>
                                </div>
                            </li>
                        </div>

                        <div class="image-container3">
                            <li class="image">
                                <div class="image-edit1">
                                    <c:choose>
                                        <c:when test="${user.photoLength < 7}">
                                            <div id="imagePreview">
                                                <img  src="" alt="" onerror="this.style.display='none'">
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <img src="${user.photos[6].link}" alt="">
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div>
                                    <button class="">+</button>
                                </div>
                            </li>
                            <li class="image">
                                <div class="image-edit1">
                                    <c:choose>
                                        <c:when test="${user.photoLength < 8}">
                                            <div id="imagePreview">
                                                <img  src="" alt="" onerror="this.style.display='none'">
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <img src="${user.photos[7].link}" alt="">
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div>
                                    <button class="">+</button>
                                </div>
                            </li>
                            <li class="image">
                                <div class="image-edit1">
                                    <c:choose>
                                        <c:when test="${user.photoLength < 9}">
                                            <div id="imagePreview">
                                                <img  src="" alt="" onerror="this.style.display='none'">
                                            </div>
                                        </c:when>
                                        <c:otherwise>
                                            <img src="${user.photos[8].link}" alt="">
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div>
                                    <button class="">+</button>
                                </div>
                            </li>
                        </div>
                    </ul>
                </div>
                <div class="add-media" >
                    <input multiple name="photo" id="embedpollfileinput"  type="file" (change)="fileEvent($event)" class="inputfile"  onchange="return fileValidation()" style="display: none"  />
                    <button id="add-media">ADD MEDIA</button>
                </div>
                <div>
                    <button onclick="showPreviewImage()" style="margin-top: 20px" class="preview-btn">Image Preview</button>
                </div>

                <div class="about-edit">
                    <label class="text-about">
                        ABOUT ME
                    </label>
                    <textarea class="input-about" type="text" style="box-sizing: border-box;"></textarea>
                    <div class="max-text" style="font-weight: bold">500</div>
                </div>
                <div class="job-edit">
                    <label class="text-job">
                        JOB TITLE
                    </label>
                    <input class="input-job" placeholder="Add Job" type="text">
                </div>
                <div class="school-edit">
                    <label class="text-school">
                        SCHOOL
                    </label>
                    <input class="input-school" placeholder="Add School" type="text">
                </div>
                <div class="living-edit">
                    <label class="text-living">
                        LIVING IN
                    </label>
                    <input class="input-living" placeholder="Add Living In" type="text">

                </div>
                <div class="gender-edit">
                    <label class="text-gender">
                        GENDER
                    </label>

                    <select class="gender-select" id="gender" name="gender">
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>
                </div>
                <div class="buttons">
                    <div class="save-info">
                        <button class="save-info-btn">Save</button>
                    </div>
                </div>
            </div>

        </div>


    </div>

</div>

<script type="text/javascript">
    $(changeHomePageImg);

    function changeHomePageImg() {

        /*$("#homepage_img").css("background-image", "url(" + imageUrl + ")");*/
        document.getElementById("profile-btn").style.backgroundColor = "#ffe0e4";
        document.getElementById("title-profile").style.backgroundColor = "#ffe0e4";

    }


    function fileValidation() {
        let fileInput =
            document.getElementById('embedpollfileinput');

        let filePath = fileInput.value;

        // Allowing file type
        let allowedExtensions =
            /(\.jpg|\.jpeg|\.png|\.gif)$/i;

        if (!allowedExtensions.exec(filePath)) {
            alert('Invalid file type! Type file must be JPG/JPEG/PNG/GIF.');
            fileInput.value = '';
            return false;
        }
        else
        {

            // Image preview
            if (fileInput.files && fileInput.files[0]) {
                let reader = new FileReader();
                reader.onload = function(e) {
                    document.getElementById(
                        'imagePreview').innerHTML =
                        '<img src="' + e.target.result
                        + '"/>';
                };

                reader.readAsDataURL(fileInput.files[0]);
            }
        }
    }


    function showPreviewImage() {
        $('.ui.modal.preview').modal('show');
    }

    $('#add-media').click(function(){
        $('#embedpollfileinput').click();
    });

    $('#edit-profile-btn1').click(function () {
        window.location = 'http://localhost:8888/profile';
    });
</script>
</body>

</html>

