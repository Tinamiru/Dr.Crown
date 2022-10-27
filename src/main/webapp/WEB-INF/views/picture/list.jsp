<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>사진목록 페이지입니다</h1>

<style>
.form-group label {
	margin: 0;
	padding: 0;
}
label {
	margin-bottom: 0;
}

.form-group {
	margin-bottom: 0;
}

.form-control {
	border-radius: 0;
	background: #fff;
	border: 1px solid #f0f1f5;
	color: #B1B1B1;
	height: 40px;
}
</style>

<!-- Button trigger modal -->
                                    <button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#modalGrid">Grid Inside Modal</button>
                                    <!-- Modal -->
                                    <div class="modal fade" id="modalGrid">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                            <!-- 모달 헤더 내용 -->
                                                <div class="modal-header">
                                                    <h4 class="modal-title">환자상세 틀</h4>
                                                    	<!-- 모달 닫기버튼 -->
                                                    	<button type="button" class="close" data-dismiss="modal">
                                                    	<span>&times;</span>
                                                    </button>
                                                </div>
                                                <!-- 모달 메인 -->
                                                <div class="modal-body" style="height: 75vh; overflow-y: scroll;">
                                                    <div class="container-fluid">
                                                        <div class="row">
                                                        	<div class="col-xl-6 col-lg-12">
										                        <div class="card">
										                            <div class="card-body">
										                                <div class="basic-form">
										                                    <form>
										                                        <div class="form-row">
										                                            <div class="form-group col-md-2 align-self-center text-center">
										                                                <label >라벨텍스트</label>
										                                            </div>
										                                            <div class="form-group col-md-3">
										                                                <input type="text" class="form-control" placeholder="이름">
										                                            </div>
										                                            <div class="form-group col-md-2">
										                                                <input type="text" class="form-control" placeholder="구분">
										                                            </div>
										                                            <div class="form-group col-md-5">
										                                                <input type="text" class="form-control" placeholder="여백테스트">
										                                            </div>
										                                        </div>
										                                        <div class="form-row">
										                                            <div class="form-group col-md-2 align-self-center text-center">
										                                                <label >이름</label>
										                                            </div>
										                                            <div class="form-group col-md-3">
										                                                <select id="inputState" class="form-control default-select">
										                                                    <option selected>셀렉트 예제</option>
										                                                    <option>Option 1</option>
										                                                    <option>Option 2</option>
										                                                    <option>Option 3</option>
										                                                </select>
										                                            </div>
										                                            <div class="form-group col-md-2">
										                                                <input type="text" class="form-control" placeholder="구분">
										                                            </div>
										                                            <div class="form-group col-md-5">
										                                                <input type="text" class="form-control" placeholder="여백테스트">
										                                            </div>
										                                        </div>
										                                        <div class="form-row">
										                                            <div class="form-group col-md-4">
										                                                <label>State</label>
										                                                <select id="inputState" class="form-control default-select">
										                                                    <option selected>셀렉트 예제</option>
										                                                    <option>Option 1</option>
										                                                    <option>Option 2</option>
										                                                    <option>Option 3</option>
										                                                </select>
										                                            </div>
										                                            <div class="form-group col-md-2">
										                                                <label>Zip</label>
										                                                <input type="text" class="form-control">
										                                            </div>
										                                        </div>
										                                        <div class="form-group">
										                                            <div class="form-check">
										                                                <input class="form-check-input" type="checkbox">
										                                                <label class="form-check-label">
										                                                    Check me out
										                                                </label>
										                                            </div>
										                                        </div>
										                                        <button type="submit" class="btn btn-primary">Sign in</button>
										                                    </form>
										                                </div>
										                            </div>
										                        </div>
															</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-danger light" data-dismiss="modal">닫기</button>
                                                    <button type="button" class="btn btn-primary">Save changes</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>