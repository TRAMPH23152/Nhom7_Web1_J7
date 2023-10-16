<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<main id="main" class="main">

    <div class="pagetitle">
        <h1>Quản Lý Sản Phẩm </h1>
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/admin">Home</a></li>
                <li class="breadcrumb-item">Sản Phẩm</li>
                <li class="breadcrumb-item active">Chi Tiết Sản Phẩm</li>
            </ol>
        </nav>
    </div><!-- End Page Title -->

    <section class="section">
        <div class="row">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Bảng Chi Tiết Sản Phẩm </h5>

                    <%--                    Button them hien le giua man hinh--%>
                    <div class="card">
                        <div class="card-body">

                            <!-- Vertically centered Modal -->
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#verticalycentered">
                                Thêm Sản Phẩm
                            </button>

                            <div class="modal fade" id="verticalycentered" tabindex="-1" aria-labelledby="verticalycenteredTitle"
                                 style="display: none;" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="verticalycenteredTitle">Thêm Sản Phẩm</h5>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <form:form action="/ctsp/add" modelAttribute="model_ctsp">
                                            <div class="modal-body">
                                                <div class="row mb-3">
                                                    <div class="col-md-6">
                                                        <label for="tenSach" class="form-label">Tên Sách:</label>
                                                        <form:input path="sach.tenSach" id="tenSach" class="form-control" />
                                                        <form:errors path="sach.tenSach" class="text-danger" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="quantityInput" class="form-label">Số Lượng:</label>
                                                        <div class="input-group">
                                                            <div class="input-group-prepend">
                                                                <button class="btn btn-outline-secondary" type="button" id="minusBtn">-</button>
                                                            </div>
                                                            <input type="number" class="form-control" id="quantityInput" value="1" min="1">
                                                            <div class="input-group-append">
                                                                <button class="btn btn-outline-secondary" type="button" id="plusBtn">+</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="nxb" class="form-label">Tên NXB:</label>
                                                    <form:select path="nxb" id="nxb" class="form-control">
                                                        <c:forEach items="${items_nxb}" var="n">
                                                            <form:option value="${n.id}">${n.tenNXB}</form:option>
                                                        </c:forEach>
                                                    </form:select>
                                                </div>

                                                <div class="mb-3">
                                                    <label for="donGia" class="form-label">Giá Tiền:</label>
                                                    <form:input path="donGia" id="donGia" class="form-control" />
                                                    <form:errors path="donGia" class="text-danger" />
                                                </div>

                                                <div class="mb-3">
                                                    <label class="form-label">Trạng Thái:</label>
                                                    <div class="form-check form-check-inline">
                                                        <form:radiobutton path="trangThai" value="1" id="status1" class="form-check-input" />
                                                        <label class="form-check-label" for="status1">Đang Bán</label>
                                                    </div>
                                                    <div class="form-check form-check-inline">
                                                        <form:radiobutton path="trangThai" value="0" id="status0" class="form-check-input" />
                                                        <label class="form-check-label" for="status0">Ngừng Bán</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary">Thêm Sản Phẩm</button>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div><!-- End Vertically centered Modal-->

                        </div>
                    </div>



                    <!-- Table with hoverable rows -->
                    <table class="table table-hover">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Tên Sách</th>
                            <th scope="col">Số Lượng</th>
                            <th scope="col">Thể Loại</th>
                            <th scope="col"> Giá Tiền</th>
                            <th scope="col">Trạng Thái</th>
                            <th scope="col">Thao Tác</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${ctsp}" var="c" varStatus="stt">
                            <tr>
                                <td>${stt.index}</td>
                                <td>${c.sach.tenSach}</td>
                                <td>${c.soLuong}</td>
                                <td>${c.theLoai.tenTheLoai}</td>
                                <td>${c.donGia} VND</td>
                                <td>${c.trangThai==1?"Đang Bán":"Ngừng Bán"}</td>
                                <td>
                                    <div class="d-flex justify-content-center action-buttons">
                                        <a href="/ctsp/view-update/${c.id}"
                                           onclick="return confirm('Bạn có muốn update sách này không?')">
                                            <i class="icon bx  bxs-edit px-1"></i>
                                        </a>
                                        <a href="/ctsp/remove/${c.id}">
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

</main>

<script>
    const quantityInput = document.getElementById("quantityInput");
    const plusBtn = document.getElementById("plusBtn");
    const minusBtn = document.getElementById("minusBtn");

    plusBtn.addEventListener("click", function () {
        quantityInput.stepUp();
    });

    minusBtn.addEventListener("click", function () {
        quantityInput.stepDown();
    });

</script>
