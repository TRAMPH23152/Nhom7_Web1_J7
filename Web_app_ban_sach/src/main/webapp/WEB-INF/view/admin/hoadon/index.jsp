<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<main id="main" class="main">

    <div class="pagetitle">
        <h1>Quản Lý Hóa Đon</h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/admin">Home</a></li>
                <li class="breadcrumb-item">Hóa Đon</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <div class="card-body">


        <!-- Default Tabs -->
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="false" tabindex="-1">All</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false" tabindex="-1">Chờ Xác Nhận</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link " id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="true">Đang Giao Hàng</button>
            </li>

            <li class="nav-item" role="presentation">
                <button class="nav-link " id="contact-tab2" data-bs-toggle="tab" data-bs-target="#contact2" type="button" role="tab" aria-controls="contact" aria-selected="true">Đã Thanh Toán</button>
            </li>
        </ul>
        <div class="tab-content pt-2" id="myTabContent">
            <div class="tab-pane fade active show" id="home" role="tabpanel" aria-labelledby="home-tab">
                <section class="section">
                    <div class="row">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Hóa Dơn</h5>
                                <!-- Table with hoverable rows -->
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Mã Hóa Đơn</th>
                                        <th scope="col">Nhân Viên</th>
                                        <th scope="col">Khách Hàng</th>
                                        <th scope="col">Ngày Đặt</th>
                                        <th scope="col">Ngày Hoàn Thành</th>
                                        <th scope="col">Trạng Thái</th>
                                        <th scope="col">Thao Tác</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${lstHd.getContent()}" var="hd" varStatus="stt">
                                        <tr>
                                            <td>${stt.index}</td>
                                            <td>${hd.maHoaDon}</td>
                                            <td>${hd.nhanVien}</td>
                                            <td>${hd.khachHang}</td>
                                            <td>${hd.ngayDat}</td>
                                            <td>${hd.ngayHoanThanh}</td>
                                            <td>
                                                <span class="badge bg-success">${hd.trangThai==0?"Chờ Thanh Toán":"Đã Thanh Toán" }</span></td>
                                            <td>
                                                <div class="d-flex justify-content-center action-buttons">
                                                    <a href="/bill/detail/${hd.id}">
                                                        <i class="icon bx bxs-show px-3"></i>
                                                    </a>
                                                    <a href="/bill/view-update/${hd.id}"
                                                       onclick="return confirm('Bạn có muốn update sách này không?')">
                                                        <i class="icon bx  bxs-edit px-1"></i>
                                                    </a>
                                                    <a href="/bill/remove/${hd.id}">
                                                        <i class="icon bx bxs-show px-3"></i>
                                                    </a>
                                                </div>
                                            </td>

                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <!-- End Table with hoverable rows -->
                                <%--                    Bắt đầu phần phân trang table --%>


                                <%--                    kết thúc phần phân trang table --%>
                            </div>
                        </div>
                    </div>
                </section>
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">«</span>
                            </a>
                        </li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">»</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <section class="section">
                    <div class="row">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Hóa Dơn</h5>
                                <!-- Table with hoverable rows -->
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Mã Hóa Đơn</th>
                                        <th scope="col">Nhân Viên</th>
                                        <th scope="col">Khách Hàng</th>
                                        <th scope="col">Ngày Đặt</th>
                                        <th scope="col">Ngày Hoàn Thành</th>
                                        <th scope="col">Thao Tác</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${lstHd.getContent()}" var="hd" varStatus="stt">
                                        <tr>
                                            <td>${stt.index}</td>
                                            <td>${hd.maHoaDon}</td>
                                            <td>${hd.nhanVien}</td>
                                            <td>${hd.khachHang}</td>
                                            <td>${hd.ngayDat}</td>
                                            <td>${hd.ngayHoanThanh}</td>

                                            <td>
                                                <div class="d-flex justify-content-center action-buttons">
                                                    <a href="/bill/detail/${hd.id}">
                                                        <i class="icon bx bxs-show px-3"></i>
                                                    </a>
                                                    <a href="/bill/view-update/${hd.id}"
                                                       onclick="return confirm('Bạn có muốn update sách này không?')">
                                                        <i class="icon bx  bxs-edit px-1"></i>
                                                    </a>
                                                    <a href="/bill/remove/${hd.id}">
                                                        <i class="icon bx bxs-show px-3"></i>
                                                    </a>
                                                </div>
                                            </td>

                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <!-- End Table with hoverable rows -->
                                <%--                    Bắt đầu phần phân trang table --%>


                                <%--                    kết thúc phần phân trang table --%>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                <section class="section">
                    <div class="row">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Hóa Dơn</h5>
                                <!-- Table with hoverable rows -->
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Mã Hóa Đơn</th>
                                        <th scope="col">Nhân Viên</th>
                                        <th scope="col">Khách Hàng</th>
                                        <th scope="col">Ngày Đặt</th>
                                        <th scope="col">Ngày Hoàn Thành</th>
                                        <th scope="col">Thao Tác</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${lstHd.getContent()}" var="hd" varStatus="stt">
                                        <tr>
                                            <td>${stt.index}</td>
                                            <td>${hd.maHoaDon}</td>
                                            <td>${hd.nhanVien}</td>
                                            <td>${hd.khachHang}</td>
                                            <td>${hd.ngayDat}</td>
                                            <td>${hd.ngayHoanThanh}</td>
                                            <td>
                                                <div class="d-flex justify-content-center action-buttons">
                                                    <a href="/bill/detail/${hd.id}">
                                                        <i class="icon bx bxs-show px-3"></i>
                                                    </a>
                                                    <a href="/bill/view-update/${hd.id}"
                                                       onclick="return confirm('Bạn có muốn update sách này không?')">
                                                        <i class="icon bx  bxs-edit px-1"></i>
                                                    </a>
                                                    <a href="/bill/remove/${hd.id}">
                                                        <i class="icon bx bxs-show px-3"></i>
                                                    </a>
                                                </div>
                                            </td>

                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <!-- End Table with hoverable rows -->
                                <%--                    Bắt đầu phần phân trang table --%>


                                <%--                    kết thúc phần phân trang table --%>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <div class="tab-pane fade" id="contact2" role="tabpanel" aria-labelledby="contact-tab">
                <section class="section">
                    <div class="row">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title">Hóa Dơn</h5>
                                <!-- Table with hoverable rows -->
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Mã Hóa Đơn</th>
                                        <th scope="col">Nhân Viên</th>
                                        <th scope="col">Khách Hàng</th>
                                        <th scope="col">Ngày Đặt</th>
                                        <th scope="col">Ngày Hoàn Thành</th>
                                        <th scope="col">Thao Tác</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${lstHd.getContent()}" var="hd" varStatus="stt">
                                        <tr>
                                            <td>${stt.index}</td>
                                            <td>${hd.maHoaDon}</td>
                                            <td>${hd.nhanVien}</td>
                                            <td>${hd.khachHang}</td>
                                            <td>${hd.ngayDat}</td>
                                            <td>${hd.ngayHoanThanh}</td>
                                            <td>
                                                <div class="d-flex justify-content-center action-buttons">
                                                    <a href="/admin/bill/detail/${hd.id}">
                                                        <i class="icon bx bxs-show px-3"></i>
                                                    </a>
                                                    <a href="/admin/bill/view-update/${hd.id}"
                                                       onclick="return confirm('Bạn có muốn update sách này không?')">
                                                        <i class="icon bx  bxs-edit px-1"></i>
                                                    </a>
                                                    <a href="/admin/bill/remove/${hd.id}">
                                                        <i class="icon bx bxs-show px-3"></i>
                                                    </a>
                                                </div>
                                            </td>

                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                <!-- End Table with hoverable rows -->
                                <%--                    Bắt đầu phần phân trang table --%>


                                <%--                    kết thúc phần phân trang table --%>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div><!-- End Default Tabs -->

    </div>



</main>
