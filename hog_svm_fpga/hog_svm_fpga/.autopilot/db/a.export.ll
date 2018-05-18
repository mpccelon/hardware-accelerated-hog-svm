; ModuleID = 'D:/lolic/Documents/Thesis/hardware-accelerated-hog-svm/hog_svm_fpga/hog_svm_fpga/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@xillybus_wrapper_str = internal unnamed_addr constant [17 x i8] c"xillybus_wrapper\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str9 = private unnamed_addr constant [8 x i8] c"ap_fifo\00", align 1
@p_str8 = private unnamed_addr constant [12 x i8] c"hls_label_3\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_2\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1

define void @xillybus_wrapper(i32* %in_r, i32* %out_r) nounwind uwtable {
arrayctor.loop4.preheader:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %in_r) nounwind, !map !172
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_r) nounwind, !map !176
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @xillybus_wrapper_str) nounwind
  %image_V = alloca [4096 x i8], align 1
  %cells_bin_V = alloca [576 x i32], align 4
  %cells_mag_sq_V = alloca [64 x i64], align 8
  %hog = alloca [1764 x float], align 16
  %grad_vote_magnitude_s = alloca [4096 x i26], align 4
  %grad_vote_bin_V = alloca [4096 x i4], align 1
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_r, [8 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_r, [8 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call fastcc void @Loop_1_proc(i32* %in_r, [4096 x i8]* %image_V)
  call fastcc void @compute_gradients([4096 x i8]* %image_V, [4096 x i26]* %grad_vote_magnitude_s, [4096 x i4]* %grad_vote_bin_V) nounwind
  call fastcc void @compute_cells([4096 x i26]* %grad_vote_magnitude_s, [4096 x i4]* %grad_vote_bin_V, [576 x i32]* %cells_bin_V, [64 x i64]* %cells_mag_sq_V) nounwind
  call fastcc void @compute_blocks([576 x i32]* %cells_bin_V, [64 x i64]* %cells_mag_sq_V, [1764 x float]* %hog) nounwind
  call fastcc void @Loop_2_proc(i32* %out_r, [1764 x float]* %hog)
  ret void
}

declare i32 @llvm.part.set.i32.i9(i32, i9, i32, i32) nounwind readnone

declare i7 @llvm.part.select.i7(i7, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i54 @llvm.part.select.i54(i54, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i64 @llvm.cttz.i64(i64, i1) nounwind readnone

define internal fastcc void @compute_gradients([4096 x i8]* nocapture %image_V, [4096 x i26]* %grad_vote_magnitude_s, [4096 x i4]* %grad_vote_bin_V) {
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %.preheader

.loopexit.loopexit:                               ; preds = %.preheader
  %exitcond = icmp eq i7 %j, -64
  %j_mid2 = select i1 %exitcond, i7 0, i7 %j
  %i_s = add i7 %i, 1
  %tmp_mid1 = icmp eq i7 %i_s, 63
  %tmp_s = icmp eq i7 %i, 63
  %tmp_mid2 = select i1 %exitcond, i1 %tmp_mid1, i1 %tmp_s
  %tmp_1_mid1 = icmp eq i7 %i_s, 0
  %tmp_1 = icmp eq i7 %i, 0
  %tmp_1_mid2 = select i1 %exitcond, i1 %tmp_1_mid1, i1 %tmp_1
  %p_v = select i1 %exitcond, i7 %i_s, i7 %i
  %tmp_2 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %p_v, i6 0)
  %tmp_4_cast = zext i13 %tmp_2 to i14
  %tmp_3 = add i7 %i, -1
  %tmp_5 = select i1 %exitcond, i7 %i, i7 %tmp_3
  %tmp_7 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_5, i6 0)
  %tmp_20_cast = sext i13 %tmp_7 to i14
  %i_1_mid1 = add i7 %i, 2
  %tmp_4 = select i1 %exitcond, i7 %i_1_mid1, i7 %i_s
  %tmp_8 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_4, i6 0)
  %tmp_24_cast = zext i13 %tmp_8 to i14
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_6 = icmp eq i7 %j_mid2, 63
  %j_1 = add i7 %j_mid2, 1
  %tmp_8_cast = zext i7 %j_1 to i14
  %tmp_11 = add i14 %tmp_8_cast, %tmp_4_cast
  %tmp_25_cast = zext i14 %tmp_11 to i64
  %image_V_addr = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_25_cast
  %image_V_load = load i8* %image_V_addr, align 1
  %tmp_45_load = select i1 %tmp_6, i8 0, i8 %image_V_load
  %tmp_9 = icmp eq i7 %j_mid2, 0
  %tmp_10 = add i7 %j_mid2, -1
  %tmp_11_cast = zext i7 %tmp_10 to i14
  %tmp_12 = add i14 %tmp_11_cast, %tmp_4_cast
  %tmp_26_cast = zext i14 %tmp_12 to i64
  %image_V_addr_1 = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_26_cast
  %image_V_load_1 = load i8* %image_V_addr_1, align 1
  %tmp_49_load = select i1 %tmp_9, i8 0, i8 %image_V_load_1
  %lhs_V = zext i8 %tmp_45_load to i9
  %rhs_V = zext i8 %tmp_49_load to i9
  %r_V = sub i9 %lhs_V, %rhs_V
  %tmp_12_cast = zext i7 %j_mid2 to i14
  %tmp_13 = add i14 %tmp_12_cast, %tmp_24_cast
  %tmp_27_cast = zext i14 %tmp_13 to i64
  %image_V_addr_2 = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_27_cast
  %tmp_15 = add i14 %tmp_12_cast, %tmp_20_cast
  %tmp_28_cast = sext i14 %tmp_15 to i64
  %image_V_addr_3 = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_28_cast
  %tmp_16 = add i14 %tmp_12_cast, %tmp_4_cast
  %tmp_29_cast = zext i14 %tmp_16 to i64
  %grad_vote_magnitude_1 = getelementptr [4096 x i26]* %grad_vote_magnitude_s, i64 0, i64 %tmp_29_cast
  %grad_vote_bin_V_addr = getelementptr [4096 x i4]* %grad_vote_bin_V, i64 0, i64 %tmp_29_cast
  %image_V_load_2 = load i8* %image_V_addr_2, align 1
  %tmp_51_load = select i1 %tmp_mid2, i8 0, i8 %image_V_load_2
  %image_V_load_3 = load i8* %image_V_addr_3, align 1
  %tmp_53_load = select i1 %tmp_1_mid2, i8 0, i8 %image_V_load_3
  %lhs_V_1 = zext i8 %tmp_51_load to i9
  %rhs_V_1 = zext i8 %tmp_53_load to i9
  %r_V_1 = sub i9 %lhs_V_1, %rhs_V_1
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V, i32 8)
  %tmp_14 = sub i9 0, %r_V
  %gradX = select i1 %tmp_20, i9 %tmp_14, i9 %r_V
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V_1, i32 8)
  %p_Val2_5 = sub i9 0, %r_V_1
  %gradY = select i1 %tmp_21, i9 %p_Val2_5, i9 %r_V_1
  %tmp_17 = icmp sgt i9 %gradX, %gradY
  %p_Val2_s = select i1 %tmp_17, i9 %gradX, i9 %gradY
  %a_V = call i25 @_ssdm_op_BitConcatenate.i25.i9.i16(i9 %p_Val2_s, i16 0)
  %a_V_cast = zext i25 %a_V to i26
  %p_Val2_2 = call i22 @_ssdm_op_BitConcatenate.i22.i9.i13(i9 %p_Val2_s, i13 0)
  %p_Val2_8_cast = zext i22 %p_Val2_2 to i24
  %p_Val2_3 = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %p_Val2_s, i14 0)
  %p_Val2_9_cast = zext i23 %p_Val2_3 to i24
  %p_Val2_4 = call i24 @_ssdm_op_BitConcatenate.i24.i9.i15(i9 %p_Val2_s, i15 0)
  %p_Val2_10_cast = zext i24 %p_Val2_4 to i25
  %tmp_22 = select i1 %tmp_17, i9 %gradY, i9 %gradX
  %p_Val2_1 = call i24 @_ssdm_op_BitConcatenate.i24.i9.i15(i9 %tmp_22, i15 0)
  %p_Val2_11_cast = sext i24 %p_Val2_1 to i26
  %addconv = add i24 %p_Val2_9_cast, %p_Val2_8_cast
  %addconv_cast = zext i24 %addconv to i25
  %addconv2 = add i25 %addconv_cast, %p_Val2_10_cast
  %addconv2_cast = zext i25 %addconv2 to i26
  %r1_V = add i26 %addconv2_cast, %p_Val2_11_cast
  %tmp_18 = icmp sgt i26 %r1_V, %a_V_cast
  %tmp_19 = select i1 %tmp_18, i26 %r1_V, i26 %a_V_cast
  store i26 %tmp_19, i26* %grad_vote_magnitude_1, align 4
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V, i32 8)
  %tmp_24 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %r_V_1, i32 8)
  %quad = xor i1 %tmp_23, %tmp_24
  %tmp_25 = call i25 @_ssdm_op_BitConcatenate.i25.i9.i16(i9 %gradY, i16 0)
  %dy_V = sext i25 %tmp_25 to i27
  %dy_V_cast15_cast_i = zext i27 %dy_V to i30
  %dy_V_cast_i = zext i27 %dy_V to i32
  %tmp_9_i = call i22 @_ssdm_op_BitConcatenate.i22.i9.i13(i9 %gradX, i13 0)
  %tmp_9_i_cast = sext i22 %tmp_9_i to i29
  %p_Val2_2_cast_i = zext i29 %tmp_9_i_cast to i30
  %tmp_10_i = call i21 @_ssdm_op_BitConcatenate.i21.i9.i12(i9 %gradX, i12 0)
  %tmp_10_i_cast = sext i21 %tmp_10_i to i28
  %p_Val2_2_i_cast = zext i28 %tmp_10_i_cast to i29
  %p_Val2_3_cast_i = zext i28 %tmp_10_i_cast to i30
  %addconv_i = add i30 %p_Val2_2_cast_i, %p_Val2_3_cast_i
  %tmp_11_i = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %gradX, i14 0)
  %tmp_11_i_cast = sext i23 %tmp_11_i to i30
  %p_Val2_3_i_cast = zext i30 %tmp_11_i_cast to i31
  %tmp_12_i = call i24 @_ssdm_op_BitConcatenate.i24.i9.i15(i9 %gradX, i15 0)
  %tmp_12_i_cast = sext i24 %tmp_12_i to i31
  %p_Val2_7 = zext i31 %tmp_12_i_cast to i32
  %tmp_13_i = call i19 @_ssdm_op_BitConcatenate.i19.i9.i10(i9 %gradX, i10 0)
  %tmp_13_i_cast = sext i19 %tmp_13_i to i26
  %p_Val2_5_i_cast = zext i26 %tmp_13_i_cast to i29
  %tmp1 = add i29 %p_Val2_2_i_cast, %p_Val2_5_i_cast
  %tmp1_cast = zext i29 %tmp1 to i32
  %p_Val2_i = add i32 %tmp1_cast, %p_Val2_7
  %tmp2 = add i29 %p_Val2_2_i_cast, 65536
  %tmp2_cast = zext i29 %tmp2 to i30
  %p_Val2_7_i = add i30 %tmp2_cast, %p_Val2_2_cast_i
  %tmp3 = add i31 %p_Val2_3_i_cast, 131072
  %tmp3_cast = zext i31 %tmp3 to i32
  %p_Val2_8_i = add i32 %tmp3_cast, %p_Val2_7
  %tmp_14_i = icmp sgt i30 %dy_V_cast15_cast_i, %addconv_i
  %tmp_15_i = icmp sgt i32 %dy_V_cast_i, %p_Val2_i
  %tmp_16_i = icmp sgt i30 %dy_V_cast15_cast_i, %p_Val2_7_i
  %tmp_17_i = select i1 %quad, i4 -8, i4 1
  %tmp_18_i = icmp sgt i32 %dy_V_cast_i, %p_Val2_8_i
  %tmp_19_cast_i_cast_c = select i1 %quad, i4 7, i4 2
  %tmp_20_cast_i_cast_c = select i1 %quad, i4 5, i4 4
  %tmp_21_cast_i_cast_c = select i1 %quad, i4 6, i4 3
  %sel_tmp_i = xor i1 %tmp_15_i, true
  %sel_tmp1_i = and i1 %tmp_14_i, %sel_tmp_i
  %sel_tmp2_i = select i1 %sel_tmp1_i, i4 %tmp_17_i, i4 %tmp_21_cast_i_cast_c
  %sel_tmp3_i = and i1 %tmp_14_i, %tmp_15_i
  %sel_tmp4_i = xor i1 %tmp_16_i, true
  %sel_tmp5_i = and i1 %sel_tmp3_i, %sel_tmp4_i
  %sel_tmp6_i = select i1 %sel_tmp5_i, i4 %tmp_19_cast_i_cast_c, i4 %sel_tmp2_i
  %tmp4 = and i1 %tmp_16_i, %tmp_18_i
  %sel_tmp9_i = and i1 %tmp4, %sel_tmp3_i
  %sel_tmp10_i = select i1 %sel_tmp9_i, i4 %tmp_20_cast_i_cast_c, i4 %sel_tmp6_i
  %agg_result_V_i = select i1 %tmp_14_i, i4 %sel_tmp10_i, i4 0
  store i4 %agg_result_V_i, i4* %grad_vote_bin_V_addr, align 1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp)
  br label %.preheader

.preheader:                                       ; preds = %.loopexit.loopexit, %0
  %indvar_flatten = phi i13 [ 0, %0 ], [ %indvar_flatten_next, %.loopexit.loopexit ]
  %i = phi i7 [ 0, %0 ], [ %p_v, %.loopexit.loopexit ]
  %j = phi i7 [ 0, %0 ], [ %j_1, %.loopexit.loopexit ]
  %exitcond_flatten = icmp eq i13 %indvar_flatten, -4096
  %empty_18 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096)
  %indvar_flatten_next = add i13 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %1, label %.loopexit.loopexit

; <label>:1                                       ; preds = %.preheader
  ret void
}

define internal fastcc void @compute_cells([4096 x i26]* nocapture %grad_vote_magnitude_s, [4096 x i4]* %grad_vote_bin_V, [576 x i32]* %cells_bin_V, [64 x i64]* %cells_mag_sq_V) {
  %bin_vote_V = alloca [9 x i32], align 4
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %.preheader230

.preheader230:                                    ; preds = %3, %0
  %indvar_flatten6 = phi i7 [ 0, %0 ], [ %indvar_flatten_next7, %3 ]
  %i_op_assign_1 = phi i7 [ 0, %0 ], [ %tmp_mid2_v_v_v, %3 ]
  %i_op_assign = phi i7 [ 0, %0 ], [ %j, %3 ]
  %exitcond_flatten8 = icmp eq i7 %indvar_flatten6, -64
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %indvar_flatten_next7 = add i7 %indvar_flatten6, 1
  br i1 %exitcond_flatten8, label %4, label %.preheader230.preheader

.preheader227:                                    ; preds = %.preheader230.preheader, %1
  %k = phi i4 [ %k_1, %1 ], [ 0, %.preheader230.preheader ]
  %exitcond4 = icmp eq i4 %k, -7
  %empty_19 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %k_1 = add i4 %k, 1
  br i1 %exitcond4, label %.preheader226.preheader, label %1

.preheader226.preheader:                          ; preds = %.preheader227
  br label %.preheader226

; <label>:1                                       ; preds = %.preheader227
  %tmp_23 = zext i4 %k to i64
  %bin_vote_V_addr = getelementptr [9 x i32]* %bin_vote_V, i64 0, i64 %tmp_23
  store i32 0, i32* %bin_vote_V_addr, align 4
  br label %.preheader227

.preheader.preheader:                             ; preds = %.preheader226
  %tmp_15 = call i3 @_ssdm_op_PartSelect.i3.i7.i32.i32(i7 %i_op_assign_mid2, i32 3, i32 5)
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_mid2_v, i3 %tmp_15)
  %tmp_s = zext i6 %tmp to i64
  %tmp_34_cast = zext i6 %tmp to i10
  %tmp_31 = call i9 @_ssdm_op_BitConcatenate.i9.i3.i3.i3(i3 %tmp_mid2_v, i3 %tmp_15, i3 0)
  %p_shl_cast = zext i9 %tmp_31 to i10
  %tmp_32 = add i10 %p_shl_cast, %tmp_34_cast
  %cells_mag_sq_V_addr = getelementptr [64 x i64]* %cells_mag_sq_V, i64 0, i64 %tmp_s
  br label %.preheader

.preheader226:                                    ; preds = %.preheader226.preheader, %.preheader23
  %indvar_flatten = phi i7 [ %indvar_flatten_next, %.preheader23 ], [ 0, %.preheader226.preheader ]
  %t_V = phi i4 [ %tmp_26_mid2_v_v_v, %.preheader23 ], [ 0, %.preheader226.preheader ]
  %t_V_1 = phi i4 [ %jj_V, %.preheader23 ], [ 0, %.preheader226.preheader ]
  %exitcond_flatten = icmp eq i7 %indvar_flatten, -64
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64)
  %indvar_flatten_next = add i7 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.preheader.preheader, label %.preheader23

.preheader23:                                     ; preds = %.preheader226
  %ii_V = add i4 %t_V, 1
  %tmp_2 = icmp eq i4 %t_V_1, -8
  %t_V_1_mid2 = select i1 %tmp_2, i4 0, i4 %t_V_1
  %tmp_26_mid2_v_v_v = select i1 %tmp_2, i4 %ii_V, i4 %t_V
  %tmp_26_mid2_v_v = zext i4 %tmp_26_mid2_v_v_v to i7
  %tmp_26_mid2_v = add i7 %tmp_mid2_v_v_v, %tmp_26_mid2_v_v
  %tmp_33 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %tmp_26_mid2_v, i6 0)
  %tmp_38_cast = zext i13 %tmp_33 to i14
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %rhs_V_cast = zext i4 %t_V_1_mid2 to i7
  %r_V = add i7 %i_op_assign_mid2, %rhs_V_cast
  %tmp_24_cast = zext i7 %r_V to i14
  %tmp_34 = add i14 %tmp_24_cast, %tmp_38_cast
  %tmp_39_cast = zext i14 %tmp_34 to i64
  %grad_vote_magnitude_2 = getelementptr [4096 x i26]* %grad_vote_magnitude_s, i64 0, i64 %tmp_39_cast
  %grad_vote_bin_V_addr = getelementptr [4096 x i4]* %grad_vote_bin_V, i64 0, i64 %tmp_39_cast
  %grad_vote_magnitude_3 = load i26* %grad_vote_magnitude_2, align 4
  %p_Val2_9 = zext i26 %grad_vote_magnitude_3 to i32
  %grad_vote_bin_V_load = load i4* %grad_vote_bin_V_addr, align 1
  %tmp_25 = zext i4 %grad_vote_bin_V_load to i64
  %bin_vote_V_addr_3 = getelementptr [9 x i32]* %bin_vote_V, i64 0, i64 %tmp_25
  %p_Val2_8 = load i32* %bin_vote_V_addr_3, align 4
  %p_Val2_s = add i32 %p_Val2_9, %p_Val2_8
  store i32 %p_Val2_s, i32* %bin_vote_V_addr_3, align 4
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_21)
  %jj_V = add i4 %t_V_1_mid2, 1
  br label %.preheader226

.preheader:                                       ; preds = %2, %.preheader.preheader
  %p_Val2_2 = phi i64 [ 0, %.preheader.preheader ], [ %mag_sq_V, %2 ]
  %k1 = phi i4 [ 0, %.preheader.preheader ], [ %k_2, %2 ]
  %exitcond = icmp eq i4 %k1, -7
  %empty_22 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %k_2 = add i4 %k1, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %.preheader
  %tmp_16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_26 = zext i4 %k1 to i64
  %tmp_26_cast = zext i4 %k1 to i10
  %tmp_35 = add i10 %tmp_32, %tmp_26_cast
  %tmp_40_cast = zext i10 %tmp_35 to i64
  %cells_bin_V_addr = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_40_cast
  %bin_vote_V_addr_1 = getelementptr [9 x i32]* %bin_vote_V, i64 0, i64 %tmp_26
  %bin_vote_V_load = load i32* %bin_vote_V_addr_1, align 4
  %tmp_18 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %bin_vote_V_load, i32 1, i32 31)
  %p_Val2_s_23 = sext i31 %tmp_18 to i32
  %tmp_27 = icmp eq i4 %k1, -8
  %tmp_28 = select i1 %tmp_27, i4 0, i4 %k_2
  %tmp_29 = zext i4 %tmp_28 to i64
  %bin_vote_V_addr_2 = getelementptr [9 x i32]* %bin_vote_V, i64 0, i64 %tmp_29
  %bin_vote_V_load_1 = load i32* %bin_vote_V_addr_2, align 4
  %tmp_20 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %bin_vote_V_load_1, i32 1, i32 31)
  %p_Val2_3 = sext i31 %tmp_20 to i32
  %addconv = add nsw i32 %p_Val2_3, %p_Val2_s_23
  store i32 %addconv, i32* %cells_bin_V_addr, align 4
  %OP1_V = sext i32 %addconv to i64
  %p_Val2_4 = mul nsw i64 %OP1_V, %OP1_V
  %mag_sq_V = add i64 %p_Val2_2, %p_Val2_4
  %empty_24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_16)
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
  store i64 %p_Val2_2, i64* %cells_mag_sq_V_addr, align 8
  %j = add i7 %i_op_assign_mid2, 8
  br label %.preheader230

.preheader230.preheader:                          ; preds = %.preheader230
  %i = add i7 %i_op_assign_1, 8
  %tmp_30 = call i1 @_ssdm_op_BitSelect.i1.i7.i32(i7 %i_op_assign, i32 6)
  %i_op_assign_mid2 = select i1 %tmp_30, i7 0, i7 %i_op_assign
  %tmp_mid2_v_v_v = select i1 %tmp_30, i7 %i, i7 %i_op_assign_1
  %tmp_mid2_v = call i3 @_ssdm_op_PartSelect.i3.i7.i32.i32(i7 %tmp_mid2_v_v_v, i32 3, i32 5)
  br label %.preheader227

; <label>:4                                       ; preds = %.preheader230
  ret void
}

define internal fastcc void @compute_blocks([576 x i32]* nocapture %cells_bin_V, [64 x i64]* nocapture %cells_mag_sq_V, [1764 x float]* nocapture %hog) {
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %.loopexit

.loopexit81.loopexit:                             ; preds = %.loopexit
  %hog_index_3_dup = add i32 252, %hog_index
  %exitcond = icmp eq i3 %j, -1
  %hog_index_1_mid2 = select i1 %exitcond, i32 %hog_index_3_dup, i32 %hog_index_1
  %j_mid2 = select i1 %exitcond, i3 0, i3 %j
  %i_s = add i3 1, %i
  %i_cast_mid2_v = select i1 %exitcond, i3 %i_s, i3 %i
  %i_cast_mid2 = zext i3 %i_cast_mid2_v to i4
  %i_2_mid1 = add i3 2, %i
  %p_v1 = select i1 %exitcond, i3 %i_2_mid1, i3 %i_s
  %hog_index_mid2 = select i1 %exitcond, i32 %hog_index_3_dup, i32 %hog_index
  %tmp = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i_cast_mid2_v, i3 %j_mid2)
  %tmp_38 = zext i6 %tmp to i64
  %cells_mag_sq_V_addr = getelementptr [64 x i64]* %cells_mag_sq_V, i64 0, i64 %tmp_38
  %tmp_34 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %p_v1, i3 %j_mid2)
  %tmp_42 = zext i6 %tmp_34 to i64
  %cells_mag_sq_V_addr_1 = getelementptr [64 x i64]* %cells_mag_sq_V, i64 0, i64 %tmp_42
  %p_Val2_s = load i64* %cells_mag_sq_V_addr, align 8
  %p_Val2_10 = load i64* %cells_mag_sq_V_addr_1, align 8
  %j_2 = add i3 1, %j_mid2
  %tmp_46 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %i_cast_mid2_v, i3 %j_2)
  %tmp_50 = zext i6 %tmp_46 to i64
  %cells_mag_sq_V_addr_2 = getelementptr [64 x i64]* %cells_mag_sq_V, i64 0, i64 %tmp_50
  %tmp_54 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %p_v1, i3 %j_2)
  %tmp_57 = zext i6 %tmp_54 to i64
  %cells_mag_sq_V_addr_3 = getelementptr [64 x i64]* %cells_mag_sq_V, i64 0, i64 %tmp_57
  %p_Val2_11 = load i64* %cells_mag_sq_V_addr_2, align 8
  %p_Val2_12 = load i64* %cells_mag_sq_V_addr_3, align 8
  %tmp24 = add i64 %p_Val2_10, %p_Val2_11
  %tmp25 = add i64 %p_Val2_s, %p_Val2_12
  %p_Val2_1 = add i64 %tmp25, %tmp24
  %tmp_s = icmp eq i64 %p_Val2_1, 0
  %is_neg = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %p_Val2_1, i32 63)
  %tmp_31 = sub nsw i64 0, %p_Val2_1
  %p_Val2_15 = select i1 %is_neg, i64 %tmp_31, i64 %p_Val2_1
  %p_Result_s = call i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64 %p_Val2_15, i32 63, i32 0)
  %tmp_32 = call i64 @llvm.cttz.i64(i64 %p_Result_s, i1 true) nounwind
  %num_zeros = trunc i64 %tmp_32 to i32
  %tmp_61 = trunc i64 %tmp_32 to i8
  %msb_idx = xor i32 %num_zeros, 63
  %tmp_66 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %msb_idx, i32 5, i32 31)
  %icmp = icmp eq i27 %tmp_66, 0
  %tmp32_V = trunc i64 %p_Val2_15 to i32
  %tmp_58 = sub nsw i32 31, %msb_idx
  %tmp32_V_1 = shl i32 %tmp32_V, %tmp_58
  %tmp_73 = trunc i32 %msb_idx to i6
  %tmp_79 = add i6 -31, %tmp_73
  %tmp_82 = zext i6 %tmp_79 to i64
  %tmp_85 = lshr i64 %p_Val2_15, %tmp_82
  %tmp32_V_2 = trunc i64 %tmp_85 to i32
  %tmp32_V_4 = select i1 %icmp, i32 %tmp32_V_1, i32 %tmp32_V_2
  %f_1 = uitofp i32 %tmp32_V_4 to float
  %tmp32_V_10 = bitcast float %f_1 to i32
  %p_Result_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp32_V_10, i32 23, i32 30)
  %tmp_59 = icmp ne i8 %p_Result_4, -98
  %tmp_23 = sub i8 -98, %tmp_61
  %tmp_24 = zext i1 %tmp_59 to i8
  %p_Repl2_1_trunc = add i8 %tmp_23, %tmp_24
  %tmp_25 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 %is_neg, i8 %p_Repl2_1_trunc)
  %p_Result_1 = call i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32 %tmp32_V_10, i9 %tmp_25, i32 23, i32 31)
  %tmp_60 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_Result_1, i32 1, i32 31)
  %tmp_62 = zext i31 %tmp_60 to i32
  %p_op = sub i32 1597463007, %tmp_62
  %tmp_71 = bitcast i32 %p_op to float
  %yn = select i1 %tmp_s, float 0x43E6EB3BE0000000, float %tmp_71
  %f = bitcast i32 %p_Result_1 to float
  %x = select i1 %tmp_s, float 0.000000e+00, float %f
  %yn_sq = fmul float %yn, %yn
  %yn_sq_x = fmul float %yn_sq, %x
  %tmp_63 = fsub float 3.000000e+00, %yn_sq_x
  %v_assign = fmul float %yn, %tmp_63
  %d_assign = fpext float %v_assign to double
  %ireg_V = bitcast double %d_assign to i64
  %tmp_93 = trunc i64 %ireg_V to i63
  %isneg = call i1 @_ssdm_op_BitSelect.i1.i64.i32(i64 %ireg_V, i32 63)
  %exp_tmp_V = call i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64 %ireg_V, i32 52, i32 62)
  %tmp_64 = zext i11 %exp_tmp_V to i12
  %tmp_101 = trunc i64 %ireg_V to i52
  %tmp_30 = call i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1 true, i52 %tmp_101)
  %p_Result_2 = zext i53 %tmp_30 to i54
  %man_V_1 = sub i54 0, %p_Result_2
  %man_V_2 = select i1 %isneg, i54 %man_V_1, i54 %p_Result_2
  %tmp_65 = icmp eq i63 %tmp_93, 0
  %F2 = sub i12 1075, %tmp_64
  %tmp_67 = icmp sgt i12 %F2, 16
  %tmp_68 = add i12 -16, %F2
  %tmp_69 = sub i12 16, %F2
  %sh_amt = select i1 %tmp_67, i12 %tmp_68, i12 %tmp_69
  %sh_amt_cast = sext i12 %sh_amt to i32
  %tmp_70 = icmp eq i12 %F2, 16
  %tmp_105 = trunc i54 %man_V_2 to i32
  %tmp_72 = icmp ult i12 %sh_amt, 54
  %tmp_106 = call i7 @_ssdm_op_PartSelect.i7.i12.i32.i32(i12 %sh_amt, i32 5, i32 11)
  %icmp1 = icmp eq i7 %tmp_106, 0
  %tmp_74 = zext i32 %sh_amt_cast to i54
  %tmp_75 = ashr i54 %man_V_2, %tmp_74
  %tmp_76 = shl i32 %tmp_105, %sh_amt_cast
  %sel_tmp2 = xor i1 %tmp_65, true
  %sel_tmp3 = and i1 %tmp_70, %sel_tmp2
  %sel_tmp7_demorgan = or i1 %tmp_65, %tmp_70
  %sel_tmp7 = xor i1 %sel_tmp7_demorgan, true
  %sel_tmp8 = and i1 %tmp_67, %sel_tmp7
  %sel_tmp9 = and i1 %sel_tmp8, %tmp_72
  %sel_tmp = xor i1 %tmp_72, true
  %sel_tmp1 = and i1 %sel_tmp8, %sel_tmp
  %sel_tmp22_demorgan = or i1 %sel_tmp7_demorgan, %tmp_67
  %sel_tmp4 = xor i1 %sel_tmp22_demorgan, true
  %sel_tmp5 = and i1 %icmp1, %sel_tmp4
  %or_cond = or i1 %sel_tmp5, %sel_tmp1
  %or_cond1 = or i1 %sel_tmp9, %sel_tmp3
  %or_cond2 = or i1 %or_cond, %or_cond1
  %tmp_83 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %tmp_76, i32 1, i32 31)
  %tmp_84 = select i1 %isneg, i31 -1, i31 0
  %tmp_86 = select i1 %sel_tmp5, i31 %tmp_83, i31 %tmp_84
  %tmp_88 = call i31 @_ssdm_op_PartSelect.i31.i54.i32.i32(i54 %tmp_75, i32 1, i32 31)
  %tmp_97 = call i31 @_ssdm_op_PartSelect.i31.i54.i32.i32(i54 %man_V_2, i32 1, i32 31)
  %tmp_107 = select i1 %sel_tmp9, i31 %tmp_88, i31 %tmp_97
  %tmp_108 = select i1 %or_cond, i31 %tmp_86, i31 %tmp_107
  %tmp_109 = select i1 %or_cond2, i31 %tmp_108, i31 0
  %tmp_77 = add i32 36, %hog_index_1_mid2
  %OP2_V_cast = sext i31 %tmp_109 to i63
  br label %1

.loopexit.loopexit:                               ; preds = %1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %indvar_flatten6 = phi i6 [ 0, %0 ], [ %indvar_flatten_next7, %.loopexit.loopexit ]
  %hog_index = phi i32 [ 0, %0 ], [ %hog_index_mid2, %.loopexit.loopexit ]
  %i = phi i3 [ 0, %0 ], [ %i_cast_mid2_v, %.loopexit.loopexit ]
  %hog_index_1 = phi i32 [ 0, %0 ], [ %tmp_77, %.loopexit.loopexit ]
  %j = phi i3 [ 0, %0 ], [ %j_2, %.loopexit.loopexit ]
  %exitcond_flatten8 = icmp eq i6 %indvar_flatten6, -15
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 49, i64 49, i64 49)
  %indvar_flatten_next7 = add i6 %indvar_flatten6, 1
  br i1 %exitcond_flatten8, label %2, label %.loopexit81.loopexit

; <label>:1                                       ; preds = %.reset, %.loopexit81.loopexit
  %indvar_flatten = phi i3 [ 0, %.loopexit81.loopexit ], [ %indvar_flatten_next, %.reset ]
  %hog_index_2 = phi i32 [ %hog_index_1_mid2, %.loopexit81.loopexit ], [ %hog_index_2_mid2, %.reset ]
  %jj = phi i2 [ 0, %.loopexit81.loopexit ], [ %tmp_84_mid2_v_v_v, %.reset ]
  %indvars_iv_in = phi i32 [ %hog_index_1_mid2, %.loopexit81.loopexit ], [ %indvars_iv, %.reset ]
  %ii = phi i2 [ 0, %.loopexit81.loopexit ], [ %ii_1, %.reset ]
  %exitcond_flatten = icmp eq i3 %indvar_flatten, -4
  %empty_25 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4)
  %indvar_flatten_next = add i3 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %.loopexit.loopexit, label %.reset

.reset:                                           ; preds = %1
  %jj_1 = add i2 1, %jj
  %tmp_82_dup = add i32 18, %hog_index_2
  %exitcond1 = icmp eq i2 %ii, -2
  %indvars_iv_in_mid2 = select i1 %exitcond1, i32 %tmp_82_dup, i32 %indvars_iv_in
  %ii_mid2 = select i1 %exitcond1, i2 0, i2 %ii
  %tmp_84_mid2_v_v_v = select i1 %exitcond1, i2 %jj_1, i2 %jj
  %tmp_84_mid2_v_v = zext i2 %tmp_84_mid2_v_v_v to i3
  %tmp_84_mid2_v = add i3 %tmp_84_mid2_v_v, %j_mid2
  %hog_index_2_mid2 = select i1 %exitcond1, i32 %tmp_82_dup, i32 %hog_index_2
  %ii_cast = zext i2 %ii_mid2 to i4
  %indvars_iv = add i32 9, %indvars_iv_in_mid2
  %tmp_33 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_78 = add i4 %ii_cast, %i_cast_mid2
  %tmp_110 = call i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4 %tmp_78, i3 %tmp_84_mid2_v)
  %tmp_117_cast = zext i7 %tmp_110 to i11
  %tmp_111 = call i10 @_ssdm_op_BitConcatenate.i10.i4.i3.i3(i4 %tmp_78, i3 %tmp_84_mid2_v, i3 0)
  %p_shl_cast = zext i10 %tmp_111 to i11
  %tmp_112 = add i11 %tmp_117_cast, %p_shl_cast
  %tmp_119_cast = zext i11 %tmp_112 to i64
  %cells_bin_V_addr = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_119_cast
  %tmp_113 = add i11 1, %tmp_112
  %tmp_120_cast = zext i11 %tmp_113 to i64
  %cells_bin_V_addr_1 = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_120_cast
  %tmp_114 = add i11 2, %tmp_112
  %tmp_121_cast = sext i11 %tmp_114 to i64
  %cells_bin_V_addr_2 = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_121_cast
  %tmp_115 = add i11 3, %tmp_112
  %tmp_122_cast = sext i11 %tmp_115 to i64
  %cells_bin_V_addr_3 = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_122_cast
  %tmp_116 = add i11 4, %tmp_112
  %tmp_123_cast = sext i11 %tmp_116 to i64
  %cells_bin_V_addr_4 = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_123_cast
  %tmp_117 = add i11 5, %tmp_112
  %tmp_124_cast = sext i11 %tmp_117 to i64
  %cells_bin_V_addr_5 = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_124_cast
  %tmp_118 = add i11 6, %tmp_112
  %tmp_125_cast = sext i11 %tmp_118 to i64
  %cells_bin_V_addr_6 = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_125_cast
  %tmp_119 = add i11 7, %tmp_112
  %tmp_126_cast = sext i11 %tmp_119 to i64
  %cells_bin_V_addr_7 = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_126_cast
  %tmp_120 = add i11 8, %tmp_112
  %tmp_127_cast = sext i11 %tmp_120 to i64
  %cells_bin_V_addr_8 = getelementptr [576 x i32]* %cells_bin_V, i64 0, i64 %tmp_127_cast
  %cells_bin_V_load = load i32* %cells_bin_V_addr, align 4
  %OP1_V_cast = sext i32 %cells_bin_V_load to i63
  %p_Val2_s_26 = mul i63 %OP2_V_cast, %OP1_V_cast
  %tmp_121 = trunc i63 %p_Val2_s_26 to i62
  %tmp_80 = icmp eq i63 %p_Val2_s_26, 0
  %tmp_122 = call i1 @_ssdm_op_BitSelect.i1.i63.i32(i63 %p_Val2_s_26, i32 62)
  %tmp_147_cast = sub i62 0, %tmp_121
  %tmp_V_2 = select i1 %tmp_122, i62 %tmp_147_cast, i62 %tmp_121
  %tmp_V_2_cast = zext i62 %tmp_V_2 to i64
  %p_Result_7 = call i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64 %tmp_V_2_cast, i32 63, i32 0)
  %tmp_81 = call i64 @llvm.cttz.i64(i64 %p_Result_7, i1 true) nounwind
  %tmp_123 = trunc i64 %tmp_81 to i32
  %tmp_124 = trunc i64 %tmp_81 to i8
  %msb_idx_2 = xor i32 %tmp_123, 63
  %tmp_125 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %msb_idx_2, i32 5, i32 31)
  %icmp2 = icmp eq i27 %tmp_125, 0
  %tmp_126 = trunc i62 %tmp_V_2 to i32
  %tmp_87 = sub nsw i32 31, %msb_idx_2
  %tmp32_V_3 = shl i32 %tmp_126, %tmp_87
  %tmp_127 = trunc i32 %msb_idx_2 to i6
  %tmp_128 = add i6 -31, %tmp_127
  %tmp_129 = zext i6 %tmp_128 to i64
  %tmp_130 = lshr i64 %tmp_V_2_cast, %tmp_129
  %tmp_131 = trunc i64 %tmp_130 to i32
  %p_012_0_i = select i1 %icmp2, i32 %tmp32_V_3, i32 %tmp_131
  %f_9 = uitofp i32 %p_012_0_i to float
  %tmp32_V_8 = bitcast float %f_9 to i32
  %p_Result_9 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp32_V_8, i32 23, i32 30)
  %tmp_89 = icmp ne i8 %p_Result_9, -98
  %tmp_35 = sub i8 -98, %tmp_124
  %tmp_36 = zext i1 %tmp_89 to i8
  %p_Repl2_7_trunc = add i8 %tmp_36, %tmp_35
  %tmp_37 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 %tmp_122, i8 %p_Repl2_7_trunc)
  %p_Result_s_27 = call i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32 %tmp32_V_8, i9 %tmp_37, i32 23, i32 31)
  %f_5 = bitcast i32 %p_Result_s_27 to float
  %p_03_i = select i1 %tmp_80, float 0.000000e+00, float %f_5
  %tmp_90 = zext i32 %indvars_iv_in_mid2 to i64
  %hog_addr = getelementptr [1764 x float]* %hog, i64 0, i64 %tmp_90
  store float %p_03_i, float* %hog_addr, align 4
  %tmp_91 = add nsw i32 1, %indvars_iv_in_mid2
  %cells_bin_V_load_1 = load i32* %cells_bin_V_addr_1, align 4
  %OP1_V_1_cast = sext i32 %cells_bin_V_load_1 to i63
  %p_Val2_55_1 = mul i63 %OP2_V_cast, %OP1_V_1_cast
  %tmp_132 = trunc i63 %p_Val2_55_1 to i62
  %tmp_145_1 = icmp eq i63 %p_Val2_55_1, 0
  %tmp_133 = call i1 @_ssdm_op_BitSelect.i1.i63.i32(i63 %p_Val2_55_1, i32 62)
  %tmp_147_1_cast = sub i62 0, %tmp_132
  %tmp_V_2_1 = select i1 %tmp_133, i62 %tmp_147_1_cast, i62 %tmp_132
  %tmp_V_2_1_cast = zext i62 %tmp_V_2_1 to i64
  %p_Result_35_1 = call i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64 %tmp_V_2_1_cast, i32 63, i32 0)
  %tmp_148_1 = call i64 @llvm.cttz.i64(i64 %p_Result_35_1, i1 true) nounwind
  %tmp_134 = trunc i64 %tmp_148_1 to i32
  %tmp_135 = trunc i64 %tmp_148_1 to i8
  %msb_idx_2_1 = xor i32 %tmp_134, 63
  %tmp_136 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %msb_idx_2_1, i32 5, i32 31)
  %icmp3 = icmp eq i27 %tmp_136, 0
  %tmp_137 = trunc i62 %tmp_V_2_1 to i32
  %tmp_150_1 = sub nsw i32 31, %msb_idx_2_1
  %tmp32_V_13_1 = shl i32 %tmp_137, %tmp_150_1
  %tmp_138 = trunc i32 %msb_idx_2_1 to i6
  %tmp_139 = add i6 -31, %tmp_138
  %tmp_140 = zext i6 %tmp_139 to i64
  %tmp_141 = lshr i64 %tmp_V_2_1_cast, %tmp_140
  %tmp_142 = trunc i64 %tmp_141 to i32
  %p_012_0_i_1 = select i1 %icmp3, i32 %tmp32_V_13_1, i32 %tmp_142
  %f_9_1 = uitofp i32 %p_012_0_i_1 to float
  %tmp32_V_20_1 = bitcast float %f_9_1 to i32
  %p_Result_22_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp32_V_20_1, i32 23, i32 30)
  %tmp_152_1 = icmp ne i8 %p_Result_22_1, -98
  %tmp_39 = sub i8 -98, %tmp_135
  %tmp_40 = zext i1 %tmp_152_1 to i8
  %p_Repl2_7_trunc_1 = add i8 %tmp_40, %tmp_39
  %tmp_41 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 %tmp_133, i8 %p_Repl2_7_trunc_1)
  %p_Result_37_1 = call i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32 %tmp32_V_20_1, i9 %tmp_41, i32 23, i32 31)
  %f_5_1 = bitcast i32 %p_Result_37_1 to float
  %p_03_i_1 = select i1 %tmp_145_1, float 0.000000e+00, float %f_5_1
  %tmp_154_1 = zext i32 %tmp_91 to i64
  %hog_addr_1 = getelementptr [1764 x float]* %hog, i64 0, i64 %tmp_154_1
  store float %p_03_i_1, float* %hog_addr_1, align 4
  %tmp_155_1 = add nsw i32 2, %indvars_iv_in_mid2
  %cells_bin_V_load_2 = load i32* %cells_bin_V_addr_2, align 4
  %OP1_V_2_cast = sext i32 %cells_bin_V_load_2 to i63
  %p_Val2_55_2 = mul i63 %OP2_V_cast, %OP1_V_2_cast
  %tmp_143 = trunc i63 %p_Val2_55_2 to i62
  %tmp_145_2 = icmp eq i63 %p_Val2_55_2, 0
  %tmp_144 = call i1 @_ssdm_op_BitSelect.i1.i63.i32(i63 %p_Val2_55_2, i32 62)
  %tmp_147_2_cast = sub i62 0, %tmp_143
  %tmp_V_2_2 = select i1 %tmp_144, i62 %tmp_147_2_cast, i62 %tmp_143
  %tmp_V_2_2_cast = zext i62 %tmp_V_2_2 to i64
  %p_Result_35_2 = call i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64 %tmp_V_2_2_cast, i32 63, i32 0)
  %tmp_148_2 = call i64 @llvm.cttz.i64(i64 %p_Result_35_2, i1 true) nounwind
  %tmp_145 = trunc i64 %tmp_148_2 to i32
  %tmp_146 = trunc i64 %tmp_148_2 to i8
  %msb_idx_2_2 = xor i32 %tmp_145, 63
  %tmp_147 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %msb_idx_2_2, i32 5, i32 31)
  %icmp4 = icmp eq i27 %tmp_147, 0
  %tmp_148 = trunc i62 %tmp_V_2_2 to i32
  %tmp_150_2 = sub nsw i32 31, %msb_idx_2_2
  %tmp32_V_13_2 = shl i32 %tmp_148, %tmp_150_2
  %tmp_149 = trunc i32 %msb_idx_2_2 to i6
  %tmp_150 = add i6 -31, %tmp_149
  %tmp_151 = zext i6 %tmp_150 to i64
  %tmp_152 = lshr i64 %tmp_V_2_2_cast, %tmp_151
  %tmp_153 = trunc i64 %tmp_152 to i32
  %p_012_0_i_2 = select i1 %icmp4, i32 %tmp32_V_13_2, i32 %tmp_153
  %f_9_2 = uitofp i32 %p_012_0_i_2 to float
  %tmp32_V_20_2 = bitcast float %f_9_2 to i32
  %p_Result_22_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp32_V_20_2, i32 23, i32 30)
  %tmp_152_2 = icmp ne i8 %p_Result_22_2, -98
  %tmp_43 = sub i8 -98, %tmp_146
  %tmp_44 = zext i1 %tmp_152_2 to i8
  %p_Repl2_7_trunc_2 = add i8 %tmp_44, %tmp_43
  %tmp_45 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 %tmp_144, i8 %p_Repl2_7_trunc_2)
  %p_Result_37_2 = call i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32 %tmp32_V_20_2, i9 %tmp_45, i32 23, i32 31)
  %f_5_2 = bitcast i32 %p_Result_37_2 to float
  %p_03_i_2 = select i1 %tmp_145_2, float 0.000000e+00, float %f_5_2
  %tmp_154_2 = zext i32 %tmp_155_1 to i64
  %hog_addr_2 = getelementptr [1764 x float]* %hog, i64 0, i64 %tmp_154_2
  store float %p_03_i_2, float* %hog_addr_2, align 4
  %tmp_155_2 = add nsw i32 3, %indvars_iv_in_mid2
  %cells_bin_V_load_3 = load i32* %cells_bin_V_addr_3, align 4
  %OP1_V_3_cast = sext i32 %cells_bin_V_load_3 to i63
  %p_Val2_55_3 = mul i63 %OP2_V_cast, %OP1_V_3_cast
  %tmp_154 = trunc i63 %p_Val2_55_3 to i62
  %tmp_145_3 = icmp eq i63 %p_Val2_55_3, 0
  %tmp_155 = call i1 @_ssdm_op_BitSelect.i1.i63.i32(i63 %p_Val2_55_3, i32 62)
  %tmp_147_3_cast = sub i62 0, %tmp_154
  %tmp_V_2_3 = select i1 %tmp_155, i62 %tmp_147_3_cast, i62 %tmp_154
  %tmp_V_2_3_cast = zext i62 %tmp_V_2_3 to i64
  %p_Result_35_3 = call i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64 %tmp_V_2_3_cast, i32 63, i32 0)
  %tmp_148_3 = call i64 @llvm.cttz.i64(i64 %p_Result_35_3, i1 true) nounwind
  %tmp_156 = trunc i64 %tmp_148_3 to i32
  %tmp_157 = trunc i64 %tmp_148_3 to i8
  %msb_idx_2_3 = xor i32 %tmp_156, 63
  %tmp_158 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %msb_idx_2_3, i32 5, i32 31)
  %icmp5 = icmp eq i27 %tmp_158, 0
  %tmp_159 = trunc i62 %tmp_V_2_3 to i32
  %tmp_150_3 = sub nsw i32 31, %msb_idx_2_3
  %tmp32_V_13_3 = shl i32 %tmp_159, %tmp_150_3
  %tmp_160 = trunc i32 %msb_idx_2_3 to i6
  %tmp_161 = add i6 -31, %tmp_160
  %tmp_162 = zext i6 %tmp_161 to i64
  %tmp_163 = lshr i64 %tmp_V_2_3_cast, %tmp_162
  %tmp_164 = trunc i64 %tmp_163 to i32
  %p_012_0_i_3 = select i1 %icmp5, i32 %tmp32_V_13_3, i32 %tmp_164
  %f_9_3 = uitofp i32 %p_012_0_i_3 to float
  %tmp32_V_20_3 = bitcast float %f_9_3 to i32
  %p_Result_22_3 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp32_V_20_3, i32 23, i32 30)
  %tmp_152_3 = icmp ne i8 %p_Result_22_3, -98
  %tmp_47 = sub i8 -98, %tmp_157
  %tmp_48 = zext i1 %tmp_152_3 to i8
  %p_Repl2_7_trunc_3 = add i8 %tmp_48, %tmp_47
  %tmp_49 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 %tmp_155, i8 %p_Repl2_7_trunc_3)
  %p_Result_37_3 = call i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32 %tmp32_V_20_3, i9 %tmp_49, i32 23, i32 31)
  %f_5_3 = bitcast i32 %p_Result_37_3 to float
  %p_03_i_3 = select i1 %tmp_145_3, float 0.000000e+00, float %f_5_3
  %tmp_154_3 = zext i32 %tmp_155_2 to i64
  %hog_addr_3 = getelementptr [1764 x float]* %hog, i64 0, i64 %tmp_154_3
  store float %p_03_i_3, float* %hog_addr_3, align 4
  %tmp_155_3 = add nsw i32 4, %indvars_iv_in_mid2
  %cells_bin_V_load_4 = load i32* %cells_bin_V_addr_4, align 4
  %OP1_V_4_cast = sext i32 %cells_bin_V_load_4 to i63
  %p_Val2_55_4 = mul i63 %OP2_V_cast, %OP1_V_4_cast
  %tmp_165 = trunc i63 %p_Val2_55_4 to i62
  %tmp_145_4 = icmp eq i63 %p_Val2_55_4, 0
  %tmp_166 = call i1 @_ssdm_op_BitSelect.i1.i63.i32(i63 %p_Val2_55_4, i32 62)
  %tmp_147_4_cast = sub i62 0, %tmp_165
  %tmp_V_2_4 = select i1 %tmp_166, i62 %tmp_147_4_cast, i62 %tmp_165
  %tmp_V_2_4_cast = zext i62 %tmp_V_2_4 to i64
  %p_Result_35_4 = call i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64 %tmp_V_2_4_cast, i32 63, i32 0)
  %tmp_148_4 = call i64 @llvm.cttz.i64(i64 %p_Result_35_4, i1 true) nounwind
  %tmp_167 = trunc i64 %tmp_148_4 to i32
  %tmp_168 = trunc i64 %tmp_148_4 to i8
  %msb_idx_2_4 = xor i32 %tmp_167, 63
  %tmp_169 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %msb_idx_2_4, i32 5, i32 31)
  %icmp6 = icmp eq i27 %tmp_169, 0
  %tmp_170 = trunc i62 %tmp_V_2_4 to i32
  %tmp_150_4 = sub nsw i32 31, %msb_idx_2_4
  %tmp32_V_13_4 = shl i32 %tmp_170, %tmp_150_4
  %tmp_171 = trunc i32 %msb_idx_2_4 to i6
  %tmp_172 = add i6 -31, %tmp_171
  %tmp_173 = zext i6 %tmp_172 to i64
  %tmp_174 = lshr i64 %tmp_V_2_4_cast, %tmp_173
  %tmp_175 = trunc i64 %tmp_174 to i32
  %p_012_0_i_4 = select i1 %icmp6, i32 %tmp32_V_13_4, i32 %tmp_175
  %f_9_4 = uitofp i32 %p_012_0_i_4 to float
  %tmp32_V_20_4 = bitcast float %f_9_4 to i32
  %p_Result_22_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp32_V_20_4, i32 23, i32 30)
  %tmp_152_4 = icmp ne i8 %p_Result_22_4, -98
  %tmp_51 = sub i8 -98, %tmp_168
  %tmp_52 = zext i1 %tmp_152_4 to i8
  %p_Repl2_7_trunc_4 = add i8 %tmp_52, %tmp_51
  %tmp_53 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 %tmp_166, i8 %p_Repl2_7_trunc_4)
  %p_Result_37_4 = call i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32 %tmp32_V_20_4, i9 %tmp_53, i32 23, i32 31)
  %f_5_4 = bitcast i32 %p_Result_37_4 to float
  %p_03_i_4 = select i1 %tmp_145_4, float 0.000000e+00, float %f_5_4
  %tmp_154_4 = zext i32 %tmp_155_3 to i64
  %hog_addr_4 = getelementptr [1764 x float]* %hog, i64 0, i64 %tmp_154_4
  store float %p_03_i_4, float* %hog_addr_4, align 4
  %tmp_155_4 = add nsw i32 5, %indvars_iv_in_mid2
  %cells_bin_V_load_5 = load i32* %cells_bin_V_addr_5, align 4
  %OP1_V_5_cast = sext i32 %cells_bin_V_load_5 to i63
  %p_Val2_55_5 = mul i63 %OP2_V_cast, %OP1_V_5_cast
  %tmp_176 = trunc i63 %p_Val2_55_5 to i62
  %tmp_145_5 = icmp eq i63 %p_Val2_55_5, 0
  %tmp_177 = call i1 @_ssdm_op_BitSelect.i1.i63.i32(i63 %p_Val2_55_5, i32 62)
  %tmp_147_5_cast = sub i62 0, %tmp_176
  %tmp_V_2_5 = select i1 %tmp_177, i62 %tmp_147_5_cast, i62 %tmp_176
  %tmp_V_2_5_cast = zext i62 %tmp_V_2_5 to i64
  %p_Result_35_5 = call i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64 %tmp_V_2_5_cast, i32 63, i32 0)
  %tmp_148_5 = call i64 @llvm.cttz.i64(i64 %p_Result_35_5, i1 true) nounwind
  %tmp_178 = trunc i64 %tmp_148_5 to i32
  %tmp_179 = trunc i64 %tmp_148_5 to i8
  %msb_idx_2_5 = xor i32 %tmp_178, 63
  %tmp_180 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %msb_idx_2_5, i32 5, i32 31)
  %icmp7 = icmp eq i27 %tmp_180, 0
  %tmp_181 = trunc i62 %tmp_V_2_5 to i32
  %tmp_150_5 = sub nsw i32 31, %msb_idx_2_5
  %tmp32_V_13_5 = shl i32 %tmp_181, %tmp_150_5
  %tmp_182 = trunc i32 %msb_idx_2_5 to i6
  %tmp_183 = add i6 -31, %tmp_182
  %tmp_184 = zext i6 %tmp_183 to i64
  %tmp_185 = lshr i64 %tmp_V_2_5_cast, %tmp_184
  %tmp_186 = trunc i64 %tmp_185 to i32
  %p_012_0_i_5 = select i1 %icmp7, i32 %tmp32_V_13_5, i32 %tmp_186
  %f_9_5 = uitofp i32 %p_012_0_i_5 to float
  %tmp32_V_20_5 = bitcast float %f_9_5 to i32
  %p_Result_22_5 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp32_V_20_5, i32 23, i32 30)
  %tmp_152_5 = icmp ne i8 %p_Result_22_5, -98
  %tmp_55 = sub i8 -98, %tmp_179
  %tmp_56 = zext i1 %tmp_152_5 to i8
  %p_Repl2_7_trunc_5 = add i8 %tmp_56, %tmp_55
  %tmp_92 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 %tmp_177, i8 %p_Repl2_7_trunc_5)
  %p_Result_37_5 = call i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32 %tmp32_V_20_5, i9 %tmp_92, i32 23, i32 31)
  %f_5_5 = bitcast i32 %p_Result_37_5 to float
  %p_03_i_5 = select i1 %tmp_145_5, float 0.000000e+00, float %f_5_5
  %tmp_154_5 = zext i32 %tmp_155_4 to i64
  %hog_addr_5 = getelementptr [1764 x float]* %hog, i64 0, i64 %tmp_154_5
  store float %p_03_i_5, float* %hog_addr_5, align 4
  %tmp_155_5 = add nsw i32 6, %indvars_iv_in_mid2
  %cells_bin_V_load_6 = load i32* %cells_bin_V_addr_6, align 4
  %OP1_V_6_cast = sext i32 %cells_bin_V_load_6 to i63
  %p_Val2_55_6 = mul i63 %OP2_V_cast, %OP1_V_6_cast
  %tmp_187 = trunc i63 %p_Val2_55_6 to i62
  %tmp_145_6 = icmp eq i63 %p_Val2_55_6, 0
  %tmp_188 = call i1 @_ssdm_op_BitSelect.i1.i63.i32(i63 %p_Val2_55_6, i32 62)
  %tmp_147_6_cast = sub i62 0, %tmp_187
  %tmp_V_2_6 = select i1 %tmp_188, i62 %tmp_147_6_cast, i62 %tmp_187
  %tmp_V_2_6_cast = zext i62 %tmp_V_2_6 to i64
  %p_Result_35_6 = call i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64 %tmp_V_2_6_cast, i32 63, i32 0)
  %tmp_148_6 = call i64 @llvm.cttz.i64(i64 %p_Result_35_6, i1 true) nounwind
  %tmp_189 = trunc i64 %tmp_148_6 to i32
  %tmp_190 = trunc i64 %tmp_148_6 to i8
  %msb_idx_2_6 = xor i32 %tmp_189, 63
  %tmp_191 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %msb_idx_2_6, i32 5, i32 31)
  %icmp8 = icmp eq i27 %tmp_191, 0
  %tmp_192 = trunc i62 %tmp_V_2_6 to i32
  %tmp_150_6 = sub nsw i32 31, %msb_idx_2_6
  %tmp32_V_13_6 = shl i32 %tmp_192, %tmp_150_6
  %tmp_193 = trunc i32 %msb_idx_2_6 to i6
  %tmp_194 = add i6 -31, %tmp_193
  %tmp_195 = zext i6 %tmp_194 to i64
  %tmp_196 = lshr i64 %tmp_V_2_6_cast, %tmp_195
  %tmp_197 = trunc i64 %tmp_196 to i32
  %p_012_0_i_6 = select i1 %icmp8, i32 %tmp32_V_13_6, i32 %tmp_197
  %f_9_6 = uitofp i32 %p_012_0_i_6 to float
  %tmp32_V_20_6 = bitcast float %f_9_6 to i32
  %p_Result_22_6 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp32_V_20_6, i32 23, i32 30)
  %tmp_152_6 = icmp ne i8 %p_Result_22_6, -98
  %tmp_94 = sub i8 -98, %tmp_190
  %tmp_95 = zext i1 %tmp_152_6 to i8
  %p_Repl2_7_trunc_6 = add i8 %tmp_95, %tmp_94
  %tmp_96 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 %tmp_188, i8 %p_Repl2_7_trunc_6)
  %p_Result_37_6 = call i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32 %tmp32_V_20_6, i9 %tmp_96, i32 23, i32 31)
  %f_5_6 = bitcast i32 %p_Result_37_6 to float
  %p_03_i_6 = select i1 %tmp_145_6, float 0.000000e+00, float %f_5_6
  %tmp_154_6 = zext i32 %tmp_155_5 to i64
  %hog_addr_6 = getelementptr [1764 x float]* %hog, i64 0, i64 %tmp_154_6
  store float %p_03_i_6, float* %hog_addr_6, align 4
  %tmp_155_6 = add nsw i32 7, %indvars_iv_in_mid2
  %cells_bin_V_load_7 = load i32* %cells_bin_V_addr_7, align 4
  %OP1_V_7_cast = sext i32 %cells_bin_V_load_7 to i63
  %p_Val2_55_7 = mul i63 %OP2_V_cast, %OP1_V_7_cast
  %tmp_198 = trunc i63 %p_Val2_55_7 to i62
  %tmp_145_7 = icmp eq i63 %p_Val2_55_7, 0
  %tmp_199 = call i1 @_ssdm_op_BitSelect.i1.i63.i32(i63 %p_Val2_55_7, i32 62)
  %tmp_147_7_cast = sub i62 0, %tmp_198
  %tmp_V_2_7 = select i1 %tmp_199, i62 %tmp_147_7_cast, i62 %tmp_198
  %tmp_V_2_7_cast = zext i62 %tmp_V_2_7 to i64
  %p_Result_35_7 = call i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64 %tmp_V_2_7_cast, i32 63, i32 0)
  %tmp_148_7 = call i64 @llvm.cttz.i64(i64 %p_Result_35_7, i1 true) nounwind
  %tmp_200 = trunc i64 %tmp_148_7 to i32
  %tmp_201 = trunc i64 %tmp_148_7 to i8
  %msb_idx_2_7 = xor i32 %tmp_200, 63
  %tmp_202 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %msb_idx_2_7, i32 5, i32 31)
  %icmp9 = icmp eq i27 %tmp_202, 0
  %tmp_203 = trunc i62 %tmp_V_2_7 to i32
  %tmp_150_7 = sub nsw i32 31, %msb_idx_2_7
  %tmp32_V_13_7 = shl i32 %tmp_203, %tmp_150_7
  %tmp_204 = trunc i32 %msb_idx_2_7 to i6
  %tmp_205 = add i6 -31, %tmp_204
  %tmp_206 = zext i6 %tmp_205 to i64
  %tmp_207 = lshr i64 %tmp_V_2_7_cast, %tmp_206
  %tmp_208 = trunc i64 %tmp_207 to i32
  %p_012_0_i_7 = select i1 %icmp9, i32 %tmp32_V_13_7, i32 %tmp_208
  %f_9_7 = uitofp i32 %p_012_0_i_7 to float
  %tmp32_V_20_7 = bitcast float %f_9_7 to i32
  %p_Result_22_7 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp32_V_20_7, i32 23, i32 30)
  %tmp_152_7 = icmp ne i8 %p_Result_22_7, -98
  %tmp_98 = sub i8 -98, %tmp_201
  %tmp_99 = zext i1 %tmp_152_7 to i8
  %p_Repl2_7_trunc_7 = add i8 %tmp_99, %tmp_98
  %tmp_100 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 %tmp_199, i8 %p_Repl2_7_trunc_7)
  %p_Result_37_7 = call i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32 %tmp32_V_20_7, i9 %tmp_100, i32 23, i32 31)
  %f_5_7 = bitcast i32 %p_Result_37_7 to float
  %p_03_i_7 = select i1 %tmp_145_7, float 0.000000e+00, float %f_5_7
  %tmp_154_7 = zext i32 %tmp_155_6 to i64
  %hog_addr_7 = getelementptr [1764 x float]* %hog, i64 0, i64 %tmp_154_7
  store float %p_03_i_7, float* %hog_addr_7, align 4
  %tmp_155_7 = add nsw i32 8, %indvars_iv_in_mid2
  %cells_bin_V_load_8 = load i32* %cells_bin_V_addr_8, align 4
  %OP1_V_8_cast = sext i32 %cells_bin_V_load_8 to i63
  %p_Val2_55_8 = mul i63 %OP2_V_cast, %OP1_V_8_cast
  %tmp_209 = trunc i63 %p_Val2_55_8 to i62
  %tmp_145_8 = icmp eq i63 %p_Val2_55_8, 0
  %tmp_210 = call i1 @_ssdm_op_BitSelect.i1.i63.i32(i63 %p_Val2_55_8, i32 62)
  %tmp_147_8_cast = sub i62 0, %tmp_209
  %tmp_V_2_8 = select i1 %tmp_210, i62 %tmp_147_8_cast, i62 %tmp_209
  %tmp_V_2_8_cast = zext i62 %tmp_V_2_8 to i64
  %p_Result_35_8 = call i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64 %tmp_V_2_8_cast, i32 63, i32 0)
  %tmp_148_8 = call i64 @llvm.cttz.i64(i64 %p_Result_35_8, i1 true) nounwind
  %tmp_211 = trunc i64 %tmp_148_8 to i32
  %tmp_212 = trunc i64 %tmp_148_8 to i8
  %msb_idx_2_8 = xor i32 %tmp_211, 63
  %tmp_213 = call i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32 %msb_idx_2_8, i32 5, i32 31)
  %icmp10 = icmp eq i27 %tmp_213, 0
  %tmp_214 = trunc i62 %tmp_V_2_8 to i32
  %tmp_150_8 = sub nsw i32 31, %msb_idx_2_8
  %tmp32_V_13_8 = shl i32 %tmp_214, %tmp_150_8
  %tmp_215 = trunc i32 %msb_idx_2_8 to i6
  %tmp_216 = add i6 -31, %tmp_215
  %tmp_217 = zext i6 %tmp_216 to i64
  %tmp_218 = lshr i64 %tmp_V_2_8_cast, %tmp_217
  %tmp_219 = trunc i64 %tmp_218 to i32
  %p_012_0_i_8 = select i1 %icmp10, i32 %tmp32_V_13_8, i32 %tmp_219
  %f_9_8 = uitofp i32 %p_012_0_i_8 to float
  %tmp32_V_20_8 = bitcast float %f_9_8 to i32
  %p_Result_22_8 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp32_V_20_8, i32 23, i32 30)
  %tmp_152_8 = icmp ne i8 %p_Result_22_8, -98
  %tmp_102 = sub i8 -98, %tmp_212
  %tmp_103 = zext i1 %tmp_152_8 to i8
  %p_Repl2_7_trunc_8 = add i8 %tmp_103, %tmp_102
  %tmp_104 = call i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1 %tmp_210, i8 %p_Repl2_7_trunc_8)
  %p_Result_37_8 = call i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32 %tmp32_V_20_8, i9 %tmp_104, i32 23, i32 31)
  %f_5_8 = bitcast i32 %p_Result_37_8 to float
  %p_03_i_8 = select i1 %tmp_145_8, float 0.000000e+00, float %f_5_8
  %tmp_154_8 = zext i32 %tmp_155_7 to i64
  %hog_addr_8 = getelementptr [1764 x float]* %hog, i64 0, i64 %tmp_154_8
  store float %p_03_i_8, float* %hog_addr_8, align 4
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str8, i32 %tmp_33)
  %ii_1 = add i2 1, %ii_mid2
  br label %1

; <label>:2                                       ; preds = %.loopexit
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.i32P(i32*, i32) {
entry:
  %empty = call i32 @_autotb_FifoWrite_i32(i32* %0, i32 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_fifo.i32P(i32*) {
entry:
  %empty = call i32 @_autotb_FifoRead_i32(i32* %0)
  ret i32 %empty
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i9.i32.i32(i32, i9, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i9(i32 %0, i9 %1, i32 %2, i32 %3)
  ret i32 %empty
}

declare i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_29 = trunc i32 %empty to i8
  ret i8 %empty_29
}

define weak i7 @_ssdm_op_PartSelect.i7.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_30 = trunc i12 %empty to i7
  ret i7 %empty_30
}

define weak i64 @_ssdm_op_PartSelect.i64.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  ret i64 %empty
}

declare i63 @_ssdm_op_PartSelect.i63.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i62 @_ssdm_op_PartSelect.i62.i63.i32.i32(i63, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

declare i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i52 @_ssdm_op_PartSelect.i52.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i32 @_ssdm_op_PartSelect.i32.i62.i32.i32(i62, i32, i32) nounwind readnone

declare i32 @_ssdm_op_PartSelect.i32.i54.i32.i32(i54, i32, i32) nounwind readnone

define weak i31 @_ssdm_op_PartSelect.i31.i54.i32.i32(i54, i32, i32) nounwind readnone {
entry:
  %empty = call i54 @llvm.part.select.i54(i54 %0, i32 %1, i32 %2)
  %empty_31 = trunc i54 %empty to i31
  ret i31 %empty_31
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_32 = trunc i32 %empty to i31
  ret i31 %empty_32
}

define weak i3 @_ssdm_op_PartSelect.i3.i7.i32.i32(i7, i32, i32) nounwind readnone {
entry:
  %empty = call i7 @llvm.part.select.i7(i7 %0, i32 %1, i32 %2)
  %empty_33 = trunc i7 %empty to i3
  ret i3 %empty_33
}

define weak i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_34 = trunc i32 %empty to i27
  ret i27 %empty_34
}

define weak i11 @_ssdm_op_PartSelect.i11.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_35 = trunc i64 %empty to i11
  ret i11 %empty_35
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_36 = shl i9 1, %empty
  %empty_37 = and i9 %0, %empty_36
  %empty_38 = icmp ne i9 %empty_37, 0
  ret i1 %empty_38
}

define weak i1 @_ssdm_op_BitSelect.i1.i7.i32(i7, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i7
  %empty_39 = shl i7 1, %empty
  %empty_40 = and i7 %0, %empty_39
  %empty_41 = icmp ne i7 %empty_40, 0
  ret i1 %empty_41
}

define weak i1 @_ssdm_op_BitSelect.i1.i64.i32(i64, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i64
  %empty_42 = shl i64 1, %empty
  %empty_43 = and i64 %0, %empty_42
  %empty_44 = icmp ne i64 %empty_43, 0
  ret i1 %empty_44
}

define weak i1 @_ssdm_op_BitSelect.i1.i63.i32(i63, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i63
  %empty_45 = shl i63 1, %empty
  %empty_46 = and i63 %0, %empty_45
  %empty_47 = icmp ne i63 %empty_46, 0
  ret i1 %empty_47
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i3.i3.i3(i3, i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %1 to i6
  %empty_48 = zext i3 %2 to i6
  %empty_49 = shl i6 %empty, 3
  %empty_50 = or i6 %empty_49, %empty_48
  %empty_51 = zext i3 %0 to i9
  %empty_52 = zext i6 %empty_50 to i9
  %empty_53 = shl i9 %empty_51, 6
  %empty_54 = or i9 %empty_53, %empty_52
  ret i9 %empty_54
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i1.i8(i1, i8) nounwind readnone {
entry:
  %empty = zext i1 %0 to i9
  %empty_55 = zext i8 %1 to i9
  %empty_56 = shl i9 %empty, 8
  %empty_57 = or i9 %empty_56, %empty_55
  ret i9 %empty_57
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i4.i3(i4, i3) nounwind readnone {
entry:
  %empty = zext i4 %0 to i7
  %empty_58 = zext i3 %1 to i7
  %empty_59 = shl i7 %empty, 3
  %empty_60 = or i7 %empty_59, %empty_58
  ret i7 %empty_60
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_61 = zext i3 %1 to i6
  %empty_62 = shl i6 %empty, 3
  %empty_63 = or i6 %empty_62, %empty_61
  ret i6 %empty_63
}

define weak i53 @_ssdm_op_BitConcatenate.i53.i1.i52(i1, i52) nounwind readnone {
entry:
  %empty = zext i1 %0 to i53
  %empty_64 = zext i52 %1 to i53
  %empty_65 = shl i53 %empty, 52
  %empty_66 = or i53 %empty_65, %empty_64
  ret i53 %empty_66
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i9.i16(i9, i16) nounwind readnone {
entry:
  %empty = zext i9 %0 to i25
  %empty_67 = zext i16 %1 to i25
  %empty_68 = shl i25 %empty, 16
  %empty_69 = or i25 %empty_68, %empty_67
  ret i25 %empty_69
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i9.i15(i9, i15) nounwind readnone {
entry:
  %empty = zext i9 %0 to i24
  %empty_70 = zext i15 %1 to i24
  %empty_71 = shl i24 %empty, 15
  %empty_72 = or i24 %empty_71, %empty_70
  ret i24 %empty_72
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9, i14) nounwind readnone {
entry:
  %empty = zext i9 %0 to i23
  %empty_73 = zext i14 %1 to i23
  %empty_74 = shl i23 %empty, 14
  %empty_75 = or i23 %empty_74, %empty_73
  ret i23 %empty_75
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i9.i13(i9, i13) nounwind readnone {
entry:
  %empty = zext i9 %0 to i22
  %empty_76 = zext i13 %1 to i22
  %empty_77 = shl i22 %empty, 13
  %empty_78 = or i22 %empty_77, %empty_76
  ret i22 %empty_78
}

define weak i21 @_ssdm_op_BitConcatenate.i21.i9.i12(i9, i12) nounwind readnone {
entry:
  %empty = zext i9 %0 to i21
  %empty_79 = zext i12 %1 to i21
  %empty_80 = shl i21 %empty, 12
  %empty_81 = or i21 %empty_80, %empty_79
  ret i21 %empty_81
}

define weak i19 @_ssdm_op_BitConcatenate.i19.i9.i10(i9, i10) nounwind readnone {
entry:
  %empty = zext i9 %0 to i19
  %empty_82 = zext i10 %1 to i19
  %empty_83 = shl i19 %empty, 10
  %empty_84 = or i19 %empty_83, %empty_82
  ret i19 %empty_84
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7, i6) nounwind readnone {
entry:
  %empty = zext i7 %0 to i13
  %empty_85 = zext i6 %1 to i13
  %empty_86 = shl i13 %empty, 6
  %empty_87 = or i13 %empty_86, %empty_85
  ret i13 %empty_87
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i4.i3.i3(i4, i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %1 to i6
  %empty_88 = zext i3 %2 to i6
  %empty_89 = shl i6 %empty, 3
  %empty_90 = or i6 %empty_89, %empty_88
  %empty_91 = zext i4 %0 to i10
  %empty_92 = zext i6 %empty_90 to i10
  %empty_93 = shl i10 %empty_91, 6
  %empty_94 = or i10 %empty_93, %empty_92
  ret i10 %empty_94
}

declare i32 @_autotb_FifoWrite_i32(i32*, i32)

declare i32 @_autotb_FifoRead_i32(i32*)

declare void @_GLOBAL__I_a() nounwind

define internal fastcc void @Loop_2_proc(i32* %out_r, [1764 x float]* nocapture %hog) nounwind {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_r, [8 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  br label %0

.exitStub:                                        ; preds = %0
  ret void

; <label>:0                                       ; preds = %1, %newFuncRoot
  %p_04_rec = phi i11 [ 0, %newFuncRoot ], [ %i, %1 ]
  %p_04_rec_cast = zext i11 %p_04_rec to i64
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1764, i64 1764, i64 1764) nounwind
  %exitcond = icmp eq i11 %p_04_rec, -284
  %i = add i11 %p_04_rec, 1
  br i1 %exitcond, label %.exitStub, label %1

; <label>:1                                       ; preds = %0
  %hog_addr = getelementptr inbounds [1764 x float]* %hog, i64 0, i64 %p_04_rec_cast
  %hog_load = load float* %hog_addr, align 4
  %temp = bitcast float %hog_load to i32
  call void @_ssdm_op_Write.ap_fifo.i32P(i32* %out_r, i32 %temp) nounwind
  br label %0
}

define internal fastcc void @Loop_1_proc(i32* %in_r, [4096 x i8]* nocapture %image_V) nounwind {
newFuncRoot:
  call void (...)* @_ssdm_op_SpecInterface(i32* %in_r, [8 x i8]* @p_str9, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2)
  br label %.preheader54.i

arrayctor.loop8.preheader.exitStub:               ; preds = %.preheader54.i
  ret void

.preheader54.i.loopexit:                          ; preds = %.preheader.i
  br label %.preheader54.i

.preheader54.i:                                   ; preds = %.preheader54.i.loopexit, %newFuncRoot
  %i_i = phi i7 [ 0, %newFuncRoot ], [ %i, %.preheader54.i.loopexit ]
  %exitcond1_i = icmp eq i7 %i_i, -64
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 64, i64 64, i64 64) nounwind
  %i = add i7 %i_i, 1
  br i1 %exitcond1_i, label %arrayctor.loop8.preheader.exitStub, label %.preheader.preheader.i

.preheader.i:                                     ; preds = %0, %.preheader.preheader.i
  %p_1_rec_i = phi i5 [ %p_rec1_i, %0 ], [ 0, %.preheader.preheader.i ]
  %j_i = phi i7 [ %j, %0 ], [ 0, %.preheader.preheader.i ]
  %empty_95 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 16, i64 16, i64 16) nounwind
  %exitcond1 = icmp eq i5 %p_1_rec_i, -16
  %p_rec1_i = add i5 %p_1_rec_i, 1
  br i1 %exitcond1, label %.preheader54.i.loopexit, label %0

.preheader.preheader.i:                           ; preds = %.preheader54.i
  %tmp_s = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %i_i, i6 0)
  %tmp_129_cast = zext i13 %tmp_s to i14
  br label %.preheader.i

; <label>:0                                       ; preds = %.preheader.i
  %temp = call i32 @_ssdm_op_Read.ap_fifo.i32P(i32* %in_r) nounwind
  %tmp = trunc i32 %temp to i8
  %tmp_2_i_cast = zext i7 %j_i to i14
  %tmp_121 = add i14 %tmp_129_cast, %tmp_2_i_cast
  %tmp_130_cast = zext i14 %tmp_121 to i64
  %image_V_addr = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_130_cast
  store i8 %tmp, i8* %image_V_addr, align 4
  %tmp_220 = trunc i7 %j_i to i6
  %tmp_3_i = or i6 %tmp_220, 1
  %tmp_122 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %i_i, i6 %tmp_3_i)
  %tmp_123 = zext i13 %tmp_122 to i64
  %image_V_addr_1 = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_123
  %p_1_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp, i32 8, i32 15)
  store i8 %p_1_i, i8* %image_V_addr_1, align 1
  %tmp_6_i = or i6 %tmp_220, 2
  %tmp_124 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %i_i, i6 %tmp_6_i)
  %tmp_125 = zext i13 %tmp_124 to i64
  %image_V_addr_2 = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_125
  %p_2_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp, i32 16, i32 23)
  store i8 %p_2_i, i8* %image_V_addr_2, align 2
  %tmp_9_i = or i6 %tmp_220, 3
  %tmp_126 = call i13 @_ssdm_op_BitConcatenate.i13.i7.i6(i7 %i_i, i6 %tmp_9_i)
  %tmp_127 = zext i13 %tmp_126 to i64
  %image_V_addr_3 = getelementptr [4096 x i8]* %image_V, i64 0, i64 %tmp_127
  %p_3_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp, i32 24, i32 31)
  store i8 %p_3_i, i8* %image_V_addr_3, align 1
  %j = add i7 4, %j_i
  br label %.preheader.i
}

!opencl.kernels = !{!0, !7, !13, !7, !16, !19, !22, !22, !26, !26, !26, !26, !26, !32, !34, !26, !26, !26, !26, !37, !39, !39, !26, !26, !41, !43, !47, !47, !53, !53, !26, !26, !26, !26, !32, !34, !26, !56, !58, !58, !26, !59, !43, !61, !61, !53, !53, !63, !63, !66, !66, !26, !67, !67, !26, !26, !69, !69, !26, !67, !66, !66, !66, !71, !71, !74, !26, !76, !76, !26, !78, !26, !26, !26, !81, !81, !83, !83, !85, !26, !26, !26, !87, !76, !76, !90, !26, !26, !26, !92, !92, !94, !94, !96, !26, !26, !26, !26, !26, !26, !98, !63, !63, !69, !69, !26, !66, !99, !26, !26, !26, !26, !100, !100, !100, !99, !67, !67, !26, !26, !102, !26, !26, !99, !100, !26, !26, !104, !107, !107, !26, !109, !26, !26, !26, !111, !111, !113, !113, !115, !117, !118, !120, !26, !26, !121, !121, !122, !124, !124, !126, !126, !128, !121, !121, !122, !126, !126, !130, !26, !132, !26, !26, !26, !111, !111, !134, !134, !135, !26, !26, !26, !26, !26, !26, !26, !26, !26, !26, !137, !137, !139, !141, !144, !146, !149, !149, !150, !74, !74, !26, !76, !76, !26, !78, !26, !26, !26, !81, !81, !83, !83, !85, !26, !26, !26, !87, !76, !76, !90, !26, !26, !26, !92, !92, !94, !94, !96, !26, !26, !26, !26, !26, !26, !98, !26, !26, !26, !67, !26, !26, !26, !26, !32, !34, !26, !26, !26, !26, !37, !39, !39, !26, !41, !43, !47, !47, !53, !53, !99, !151, !151, !151, !99, !67, !67, !26, !153, !153, !26, !26, !67, !67, !155, !155, !26, !26, !99, !157, !157, !157, !99, !67, !67, !26, !159, !159, !26, !26, !159, !159, !159, !99, !67, !67, !26, !161, !161, !26, !26, !163, !99, !67, !67, !26, !126, !126, !26, !26, !124, !124, !153, !153, !153, !99, !67, !67, !26, !100, !100, !26, !26, !100, !100, !100, !99, !67, !67, !26, !26, !102, !26, !26, !121, !121, !122, !126, !126, !130, !26, !26, !26, !26, !26, !26}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!165}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"byte [64]*", metadata !"struct gradient_vote [64]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"image", metadata !"grad_vote"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"struct cell_histogram [8]*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"cells"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"struct gradient_vote [64]*", metadata !"struct cell_histogram [8]*"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"grad_vote", metadata !"cells"}
!16 = metadata !{null, metadata !1, metadata !2, metadata !17, metadata !4, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"struct cell_histogram [8]*", metadata !"float*"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"cells", metadata !"hog"}
!19 = metadata !{void (i32*, i32*)* @xillybus_wrapper, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int*"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"in", metadata !"out"}
!22 = metadata !{null, metadata !23, metadata !9, metadata !24, metadata !11, metadata !25, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!26 = metadata !{null, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !6}
!27 = metadata !{metadata !"kernel_arg_addr_space"}
!28 = metadata !{metadata !"kernel_arg_access_qual"}
!29 = metadata !{metadata !"kernel_arg_type"}
!30 = metadata !{metadata !"kernel_arg_type_qual"}
!31 = metadata !{metadata !"kernel_arg_name"}
!32 = metadata !{null, metadata !23, metadata !9, metadata !24, metadata !11, metadata !33, metadata !6}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"pi"}
!34 = metadata !{null, metadata !23, metadata !9, metadata !35, metadata !11, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"pf"}
!37 = metadata !{null, metadata !23, metadata !9, metadata !38, metadata !11, metadata !25, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!39 = metadata !{null, metadata !23, metadata !9, metadata !38, metadata !11, metadata !40, metadata !6}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!41 = metadata !{null, metadata !23, metadata !9, metadata !42, metadata !11, metadata !25, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!43 = metadata !{null, metadata !44, metadata !2, metadata !45, metadata !4, metadata !46, metadata !6}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!47 = metadata !{null, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !6}
!48 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!49 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!51 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!53 = metadata !{null, metadata !23, metadata !9, metadata !54, metadata !11, metadata !55, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!56 = metadata !{null, metadata !23, metadata !9, metadata !57, metadata !11, metadata !25, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<32, false> &"}
!58 = metadata !{null, metadata !23, metadata !9, metadata !57, metadata !11, metadata !40, metadata !6}
!59 = metadata !{null, metadata !23, metadata !9, metadata !60, metadata !11, metadata !25, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!61 = metadata !{null, metadata !48, metadata !49, metadata !62, metadata !51, metadata !52, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, false>*", metadata !"int", metadata !"int"}
!63 = metadata !{null, metadata !23, metadata !9, metadata !64, metadata !11, metadata !65, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<64, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!65 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!66 = metadata !{null, metadata !23, metadata !9, metadata !64, metadata !11, metadata !55, metadata !6}
!67 = metadata !{null, metadata !23, metadata !9, metadata !68, metadata !11, metadata !55, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!69 = metadata !{null, metadata !23, metadata !9, metadata !70, metadata !11, metadata !55, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<65, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!71 = metadata !{null, metadata !23, metadata !9, metadata !72, metadata !11, metadata !73, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"double"}
!73 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!74 = metadata !{null, metadata !23, metadata !9, metadata !72, metadata !11, metadata !75, metadata !6}
!75 = metadata !{metadata !"kernel_arg_name", metadata !"d"}
!76 = metadata !{null, metadata !23, metadata !9, metadata !77, metadata !11, metadata !55, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!78 = metadata !{null, metadata !44, metadata !2, metadata !79, metadata !4, metadata !80, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<54, true> &"}
!80 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!81 = metadata !{null, metadata !23, metadata !9, metadata !82, metadata !11, metadata !55, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<54, true> &"}
!83 = metadata !{null, metadata !23, metadata !9, metadata !84, metadata !11, metadata !55, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!85 = metadata !{null, metadata !23, metadata !9, metadata !86, metadata !11, metadata !65, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!87 = metadata !{null, metadata !44, metadata !2, metadata !88, metadata !4, metadata !89, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"int"}
!89 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!90 = metadata !{null, metadata !44, metadata !2, metadata !91, metadata !4, metadata !80, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &", metadata !"const ap_int_base<32, true> &"}
!92 = metadata !{null, metadata !23, metadata !9, metadata !93, metadata !11, metadata !55, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!94 = metadata !{null, metadata !23, metadata !9, metadata !95, metadata !11, metadata !55, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<11, false> &"}
!96 = metadata !{null, metadata !23, metadata !9, metadata !97, metadata !11, metadata !65, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!98 = metadata !{null, metadata !23, metadata !9, metadata !72, metadata !11, metadata !36, metadata !6}
!99 = metadata !{null, metadata !23, metadata !9, metadata !68, metadata !11, metadata !65, metadata !6}
!100 = metadata !{null, metadata !23, metadata !9, metadata !101, metadata !11, metadata !55, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 17, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!102 = metadata !{null, metadata !23, metadata !9, metadata !77, metadata !11, metadata !103, metadata !6}
!103 = metadata !{metadata !"kernel_arg_name", metadata !"sh"}
!104 = metadata !{null, metadata !44, metadata !2, metadata !105, metadata !4, metadata !106, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"short", metadata !"const ap_int_base<8, false> &"}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!107 = metadata !{null, metadata !23, metadata !9, metadata !108, metadata !11, metadata !55, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"short"}
!109 = metadata !{null, metadata !44, metadata !2, metadata !110, metadata !4, metadata !80, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &", metadata !"const ap_int_base<8, false> &"}
!111 = metadata !{null, metadata !23, metadata !9, metadata !112, metadata !11, metadata !55, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!113 = metadata !{null, metadata !23, metadata !9, metadata !114, metadata !11, metadata !55, metadata !6}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!115 = metadata !{null, metadata !23, metadata !9, metadata !77, metadata !11, metadata !116, metadata !6}
!116 = metadata !{metadata !"kernel_arg_name", metadata !""}
!117 = metadata !{null, metadata !23, metadata !9, metadata !84, metadata !11, metadata !65, metadata !6}
!118 = metadata !{null, metadata !44, metadata !2, metadata !119, metadata !4, metadata !80, metadata !6}
!119 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!120 = metadata !{null, metadata !23, metadata !9, metadata !93, metadata !11, metadata !65, metadata !6}
!121 = metadata !{null, metadata !23, metadata !9, metadata !77, metadata !11, metadata !73, metadata !6}
!122 = metadata !{null, metadata !23, metadata !9, metadata !77, metadata !11, metadata !123, metadata !6}
!123 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!124 = metadata !{null, metadata !23, metadata !9, metadata !77, metadata !11, metadata !125, metadata !6}
!125 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!126 = metadata !{null, metadata !23, metadata !9, metadata !127, metadata !11, metadata !55, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!128 = metadata !{null, metadata !23, metadata !9, metadata !129, metadata !11, metadata !55, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<64, 32, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!130 = metadata !{null, metadata !23, metadata !9, metadata !131, metadata !11, metadata !55, metadata !6}
!131 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed<32, 16, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!132 = metadata !{null, metadata !44, metadata !2, metadata !133, metadata !4, metadata !80, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!134 = metadata !{null, metadata !23, metadata !9, metadata !77, metadata !11, metadata !25, metadata !6}
!135 = metadata !{null, metadata !23, metadata !9, metadata !136, metadata !11, metadata !65, metadata !6}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!137 = metadata !{null, metadata !44, metadata !2, metadata !45, metadata !4, metadata !138, metadata !6}
!138 = metadata !{metadata !"kernel_arg_name", metadata !"gradX", metadata !"gradY"}
!139 = metadata !{null, metadata !44, metadata !2, metadata !45, metadata !4, metadata !140, metadata !6}
!140 = metadata !{metadata !"kernel_arg_name", metadata !"dx", metadata !"dy"}
!141 = metadata !{null, metadata !23, metadata !9, metadata !142, metadata !11, metadata !143, metadata !6}
!142 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!143 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!144 = metadata !{null, metadata !23, metadata !9, metadata !145, metadata !11, metadata !143, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"uint &"}
!146 = metadata !{null, metadata !23, metadata !9, metadata !147, metadata !11, metadata !148, metadata !6}
!147 = metadata !{metadata !"kernel_arg_type", metadata !"double_fixed_point"}
!148 = metadata !{metadata !"kernel_arg_name", metadata !"sum_of_squares"}
!149 = metadata !{null, metadata !23, metadata !9, metadata !35, metadata !11, metadata !73, metadata !6}
!150 = metadata !{null, metadata !23, metadata !9, metadata !35, metadata !11, metadata !75, metadata !6}
!151 = metadata !{null, metadata !23, metadata !9, metadata !152, metadata !11, metadata !55, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<35, 19, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!153 = metadata !{null, metadata !23, metadata !9, metadata !154, metadata !11, metadata !55, metadata !6}
!154 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 18, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!155 = metadata !{null, metadata !23, metadata !9, metadata !156, metadata !11, metadata !25, metadata !6}
!156 = metadata !{metadata !"kernel_arg_type", metadata !"ushort"}
!157 = metadata !{null, metadata !23, metadata !9, metadata !158, metadata !11, metadata !55, metadata !6}
!158 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<51, 35, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!159 = metadata !{null, metadata !23, metadata !9, metadata !160, metadata !11, metadata !55, metadata !6}
!160 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<50, 34, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!161 = metadata !{null, metadata !23, metadata !9, metadata !162, metadata !11, metadata !55, metadata !6}
!162 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<49, 33, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!163 = metadata !{null, metadata !44, metadata !2, metadata !164, metadata !4, metadata !106, metadata !6}
!164 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_fixed_base<32, 16, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!165 = metadata !{metadata !166, [1 x i32]* @llvm_global_ctors_0}
!166 = metadata !{metadata !167}
!167 = metadata !{i32 0, i32 31, metadata !168}
!168 = metadata !{metadata !169}
!169 = metadata !{metadata !"llvm.global_ctors.0", metadata !170, metadata !"", i32 0, i32 31}
!170 = metadata !{metadata !171}
!171 = metadata !{i32 0, i32 0, i32 1}
!172 = metadata !{metadata !173}
!173 = metadata !{i32 0, i32 31, metadata !174}
!174 = metadata !{metadata !175}
!175 = metadata !{metadata !"in", metadata !170, metadata !"int", i32 0, i32 31}
!176 = metadata !{metadata !177}
!177 = metadata !{i32 0, i32 31, metadata !178}
!178 = metadata !{metadata !179}
!179 = metadata !{metadata !"out", metadata !170, metadata !"int", i32 0, i32 31}
