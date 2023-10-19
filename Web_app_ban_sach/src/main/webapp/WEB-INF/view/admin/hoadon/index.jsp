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
            <li class="nav-item" role="presentation" style="position: relative">
              <span class="badge bg-secondary text-light" style="position: absolute; right: -10px; border-radius: 50%; top: -10px;z-index: 99999">${lstHd.size()}</span>
                <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#tabAll" type="button" role="tab" aria-controls="home" aria-selected="false" tabindex="-1">All</button>
            </li>
            <li class="nav-item" role="presentation" style="position: relative">
                <span class="badge bg-secondary text-light" style="position: absolute; right: -10px; border-radius: 50%; top: -10px;z-index: 99999">${lstHd0.size()}</span>
                <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#tab0" type="button" role="tab" aria-controls="tabAll" aria-selected="false" tabindex="-1">Chờ Xác Nhận</button>
            </li>
            <li class="nav-item" role="presentation" style="position: relative">
                <span class="badge bg-secondary text-light" style="position: absolute; right: -10px; border-radius: 50%; top: -10px;z-index: 99999">${lstHd1.size()}</span>
                <button class="nav-link " id="contact-tab" data-bs-toggle="tab" data-bs-target="#tab1" type="button" role="tab" aria-controls="contact" aria-selected="true">Chờ Giao Hàng</button>
            </li>
            <li class="nav-item" role="presentation" style="position: relative">
                <span class="badge bg-secondary text-light" style="position: absolute; right: -10px; border-radius: 50%; top: -10px;z-index: 99999">${lstHd2.size()}</span>
                <button class="nav-link " id="contact-tab2" data-bs-toggle="tab" data-bs-target="#tab2" type="button" role="tab" aria-controls="contact" aria-selected="true">Đang Giao Hàng</button>
            </li>
            <li class="nav-item" role="presentation" style="position: relative">
                <span class="badge bg-secondary text-light" style="position: absolute; right: -10px; border-radius: 50%; top: -10px;z-index: 99999">${lstHd3.size()}</span>
                <button class="nav-link " id="contact-tab3" data-bs-toggle="tab" data-bs-target="#tab3" type="button" role="tab" aria-controls="contact" aria-selected="true">Hoàn Thành</button>
            </li>
            <li class="nav-item" role="presentation" style="position: relative">
                <span class="badge bg-secondary text-light" style="position: absolute; right: -10px; border-radius: 50%; top: -10px;z-index: 99999">${lstHd4.size()}</span>
                <button class="nav-link " id="contact-tab4" data-bs-toggle="tab" data-bs-target="#tab4" type="button" role="tab" aria-controls="contact" aria-selected="true">Hủy</button>
            </li>

            <li class="nav-item" role="presentation" style="position: relative">
                <span class="badge bg-secondary text-light" style="position: absolute; right: -10px; border-radius: 50%; top: -10px;z-index: 99999">${lstHd5.size()}</span>
                <button class="nav-link " id="contact-tab5" data-bs-toggle="tab" data-bs-target="#tab5" type="button" role="tab" aria-controls="contact" aria-selected="true">Đã Thanh Toán</button>
            </li>
        </ul>
        <div class="tab-content pt-2" id="myTabContent">
            <div class="tab-pane fade active show" id="tabAll" role="tabpanel" aria-labelledby="home-tab">
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
                                        <th scope="col">Hình Thức</th>
                                        <th scope="col">Tổng Tiền</th>
                                        <th scope="col">Trạng Thái</th>
                                        <th scope="col">Thao Tác</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${lstHd}" var="hd" varStatus="stt">
                                        <tr>
                                            <td>${stt.index}</td>
                                            <td>${hd.maHoaDon}</td>
                                            <td>${hd.nhanVien}</td>
                                            <td>${hd.khachHang}</td>
                                            <td>${hd.ngayDat}</td>
                                            <td>${hd.ngayHoanThanh}</td>
                                            <td>
                                                <c:forEach items="${hd.lstHttt}" var="httt">
                                                    <span class="badge bg-success">${httt.thanhToan.hinhThuc} </span>
                                                </c:forEach>
                                            </td>
                                            <td>${hd.thanhTien}</td>
                                            <td>
                                                <span class="badge bg-success">${hd.trangThai==0?"Chờ Xác Nhận":
                                                        hd.trangThai==1?"Chờ Giao Hàng":
                                                                hd.trangThai==2?"Đang Giao Hàng":
                                                                        hd.trangThai==3?"Hoàn Thanhh":
                                                                                hd.trangThai==4?"Hủy":
                                                                                        hd.trangThai==5?"Đã Thanh Toán":""
                                                 }</span></td>
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
                                                        <i class="bi bi-trash"></i>
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
            <div class="tab-pane fade" id="tab0" role="tabpanel" aria-labelledby="profile-tab">
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
                                        <th scope="col">Tổng Tiền</th>
                                        <th scope="col">Thao Tác</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${lstHd0}" var="hd" varStatus="stt">
                                        <tr>
                                            <td>${stt.index}</td>
                                            <td>${hd.maHoaDon}</td>
                                            <td>${hd.nhanVien}</td>
                                            <td>${hd.khachHang}</td>
                                            <td>${hd.ngayDat}</td>
                                            <td>${hd.ngayHoanThanh}</td>
                                            <td>${hd.thanhTien}</td>
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
                                                        <i class="bi bi-trash"></i>
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

            <div class="tab-pane fade" id="tab1" role="tabpanel" aria-labelledby="profile-tab">
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
                                        <th scope="col">Tổng Tiền</th>
                                        <th scope="col">Thao Tác</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${lstHd1}" var="hd" varStatus="stt">
                                        <tr>
                                            <td>${stt.index}</td>
                                            <td>${hd.maHoaDon}</td>
                                            <td>${hd.nhanVien}</td>
                                            <td>${hd.khachHang}</td>
                                            <td>${hd.ngayDat}</td>
                                            <td>${hd.ngayHoanThanh}</td>
                                            <td>${hd.thanhTien}</td>
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
                                                        <i class="bi bi-trash"></i>
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
            <div class="tab-pane fade" id="tab2" role="tabpanel" aria-labelledby="profile-tab">
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
                                        <th scope="col">Tổng Tiền</th>
                                        <th scope="col">Thao Tác</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${lstHd2}" var="hd" varStatus="stt">
                                        <tr>
                                            <td>${stt.index}</td>
                                            <td>${hd.maHoaDon}</td>
                                            <td>${hd.nhanVien}</td>
                                            <td>${hd.khachHang}</td>
                                            <td>${hd.ngayDat}</td>
                                            <td>${hd.ngayHoanThanh}</td>
                                            <td>${hd.thanhTien}</td>
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
                                                        <i class="bi bi-trash"></i>
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
            <div class="tab-pane fade" id="tab3" role="tabpanel" aria-labelledby="profile-tab">
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
                                        <th scope="col">Tổng Tiền</th>
                                        <th scope="col">Thao Tác</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${lstHd3}" var="hd" varStatus="stt">
                                        <tr>
                                            <td>${stt.index}</td>
                                            <td>${hd.maHoaDon}</td>
                                            <td>${hd.nhanVien}</td>
                                            <td>${hd.khachHang}</td>
                                            <td>${hd.ngayDat}</td>
                                            <td>${hd.ngayHoanThanh}</td>
                                            <td>${hd.thanhTien}</td>
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
                                                        <i class="bi bi-trash"></i>
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
            <div class="tab-pane fade" id="tab4" role="tabpanel" aria-labelledby="profile-tab">
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
                                        <th scope="col">Tổng Tiền</th>
                                        <th scope="col">Thao Tác</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${lstHd4}" var="hd" varStatus="stt">
                                        <tr>
                                            <td>${stt.index}</td>
                                            <td>${hd.maHoaDon}</td>
                                            <td>${hd.nhanVien}</td>
                                            <td>${hd.khachHang}</td>
                                            <td>${hd.ngayDat}</td>
                                            <td>${hd.ngayHoanThanh}</td>
                                            <td>${hd.thanhTien}</td>
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
                                                        <i class="bi bi-trash"></i>
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
            <div class="tab-pane fade" id="tab5" role="tabpanel" aria-labelledby="profile-tab">
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
                                        <th scope="col">Tổng Tiền</th>
                                        <th scope="col">Thao Tác</th>

                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${lstHd5}" var="hd" varStatus="stt">
                                        <tr>
                                            <td>${stt.index}</td>
                                            <td>${hd.maHoaDon}</td>
                                            <td>${hd.nhanVien}</td>
                                            <td>${hd.khachHang}</td>
                                            <td>${hd.ngayDat}</td>
                                            <td>${hd.ngayHoanThanh}</td>
                                            <td>${hd.thanhTien}</td>
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
                                                        <i class="bi bi-trash"></i>
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
