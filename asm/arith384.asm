// Implements the Arith for BLS12_384 curve.
//
// This code was extracted from: https://github.com/puma314/blspil/blob/main/pil
// and adapted to powdr-pil.

machine BLS12_381(latch, function_id) {

	degree 65536;

	constraints {
		col witness function_id;
		col fixed latch = [1]*;

		/*
			Equations:
			EQ: a * b + c = d * P + e
		*/
		col fixed BYTE2(i) { i & 0xffff };
		// 1 if CLK==0 and 0 if CLK!=0
		col fixed CLK_0 = [1] + [0]*;
		col fixed CLK_1 = [1] + [0]*;
		col fixed CLK_2 = [1] + [0]*;
		col fixed CLK_3 = [1] + [0]*;
		col fixed CLK_4 = [1] + [0]*;
		col fixed CLK_5 = [1] + [0]*;
		col fixed CLK_6 = [1] + [0]*;
		col fixed CLK_7 = [1] + [0]*;
		col fixed CLK_8 = [1] + [0]*;
		col fixed CLK_9 = [1] + [0]*;
		col fixed CLK_10 = [1] + [0]*;
		col fixed CLK_11 = [1] + [0]*;
		col fixed CLK_12 = [1] + [0]*;
		col fixed CLK_13 = [1] + [0]*;
		col fixed CLK_14 = [1] + [0]*;
		col fixed CLK_15 = [1] + [0]*;
		col fixed CLK_16 = [1] + [0]*;
		col fixed CLK_17 = [1] + [0]*;
		col fixed CLK_18 = [1] + [0]*;
		col fixed CLK_19 = [1] + [0]*;
		col fixed CLK_20 = [1] + [0]*;
		col fixed CLK_21 = [1] + [0]*;
		col fixed CLK_22 = [1] + [0]*;
		col fixed CLK_23 = [1] + [0]*;
		col fixed CLK_24 = [1] + [0]*;
		col fixed CLK_25 = [1] + [0]*;
		col fixed CLK_26 = [1] + [0]*;
		col fixed CLK_27 = [1] + [0]*;
		col fixed CLK_28 = [1] + [0]*;
		col fixed CLK_29 = [1] + [0]*;
		col fixed CLK_30 = [1] + [0]*;
		col fixed CLK_31 = [1] + [0]*;
		col fixed CLK_32 = [1] + [0]*;
		col fixed CLK_33 = [1] + [0]*;
		col fixed CLK_34 = [1] + [0]*;
		col fixed CLK_35 = [1] + [0]*;
		col fixed CLK_36 = [1] + [0]*;
		col fixed CLK_37 = [1] + [0]*;
		col fixed CLK_38 = [1] + [0]*;
		col fixed CLK_39 = [1] + [0]*;
		col fixed CLK_40 = [1] + [0]*;
		col fixed CLK_41 = [1] + [0]*;
		col fixed CLK_42 = [1] + [0]*;
		col fixed CLK_43 = [1] + [0]*;
		col fixed CLK_44 = [1] + [0]*;
		col fixed CLK_45 = [1] + [0]*;
		col fixed CLK_46 = [1] + [0]*;
		col fixed CLK_47 = [1] + [0]*;

		/*
		pol commit a[24];
		pol commit b[24];
		pol commit c[24];
		pol commit d[24];
		pol commit e[24];
		*/
		pol commit a_0;
		pol commit a_1;
		pol commit a_2;
		pol commit a_3;
		pol commit a_4;
		pol commit a_5;
		pol commit a_6;
		pol commit a_7;
		pol commit a_8;
		pol commit a_9;
		pol commit a_10;
		pol commit a_11;
		pol commit a_12;
		pol commit a_13;
		pol commit a_14;
		pol commit a_15;
		pol commit a_16;
		pol commit a_17;
		pol commit a_18;
		pol commit a_19;
		pol commit a_20;
		pol commit a_21;
		pol commit a_22;
		pol commit a_23;

		pol commit b_0;
		pol commit b_1;
		pol commit b_2;
		pol commit b_3;
		pol commit b_4;
		pol commit b_5;
		pol commit b_6;
		pol commit b_7;
		pol commit b_8;
		pol commit b_9;
		pol commit b_10;
		pol commit b_11;
		pol commit b_12;
		pol commit b_13;
		pol commit b_14;
		pol commit b_15;
		pol commit b_16;
		pol commit b_17;
		pol commit b_18;
		pol commit b_19;
		pol commit b_20;
		pol commit b_21;
		pol commit b_22;
		pol commit b_23;

		pol commit c_0;
		pol commit c_1;
		pol commit c_2;
		pol commit c_3;
		pol commit c_4;
		pol commit c_5;
		pol commit c_6;
		pol commit c_7;
		pol commit c_8;
		pol commit c_9;
		pol commit c_10;
		pol commit c_11;
		pol commit c_12;
		pol commit c_13;
		pol commit c_14;
		pol commit c_15;
		pol commit c_16;
		pol commit c_17;
		pol commit c_18;
		pol commit c_19;
		pol commit c_20;
		pol commit c_21;
		pol commit c_22;
		pol commit c_23;

		pol commit d_0;
		pol commit d_1;
		pol commit d_2;
		pol commit d_3;
		pol commit d_4;
		pol commit d_5;
		pol commit d_6;
		pol commit d_7;
		pol commit d_8;
		pol commit d_9;
		pol commit d_10;
		pol commit d_11;
		pol commit d_12;
		pol commit d_13;
		pol commit d_14;
		pol commit d_15;
		pol commit d_16;
		pol commit d_17;
		pol commit d_18;
		pol commit d_19;
		pol commit d_20;
		pol commit d_21;
		pol commit d_22;
		pol commit d_23;

		pol commit e_0;
		pol commit e_1;
		pol commit e_2;
		pol commit e_3;
		pol commit e_4;
		pol commit e_5;
		pol commit e_6;
		pol commit e_7;
		pol commit e_8;
		pol commit e_9;
		pol commit e_10;
		pol commit e_11;
		pol commit e_12;
		pol commit e_13;
		pol commit e_14;
		pol commit e_15;
		pol commit e_16;
		pol commit e_17;
		pol commit e_18;
		pol commit e_19;
		pol commit e_20;
		pol commit e_21;
		pol commit e_22;
		pol commit e_23;

		/****
		* LATCH POLS: a,b,c,d,e
		*****/

		a_0' * (1-CLK_47) = a_0 * (1-CLK_47);
		a_1' * (1-CLK_47) = a_1 * (1-CLK_47);
		a_2' * (1-CLK_47) = a_2 * (1-CLK_47);
		a_3' * (1-CLK_47) = a_3 * (1-CLK_47);
		a_4' * (1-CLK_47) = a_4 * (1-CLK_47);
		a_5' * (1-CLK_47) = a_5 * (1-CLK_47);
		a_6' * (1-CLK_47) = a_6 * (1-CLK_47);
		a_7' * (1-CLK_47) = a_7 * (1-CLK_47);
		a_8' * (1-CLK_47) = a_8 * (1-CLK_47);
		a_9' * (1-CLK_47) = a_9 * (1-CLK_47);
		a_10' * (1-CLK_47) = a_10 * (1-CLK_47);
		a_11' * (1-CLK_47) = a_11 * (1-CLK_47);
		a_12' * (1-CLK_47) = a_12 * (1-CLK_47);
		a_13' * (1-CLK_47) = a_13 * (1-CLK_47);
		a_14' * (1-CLK_47) = a_14 * (1-CLK_47);
		a_15' * (1-CLK_47) = a_15 * (1-CLK_47);
		a_16' * (1-CLK_47) = a_16 * (1-CLK_47);
		a_17' * (1-CLK_47) = a_17 * (1-CLK_47);
		a_18' * (1-CLK_47) = a_18 * (1-CLK_47);
		a_19' * (1-CLK_47) = a_19 * (1-CLK_47);
		a_20' * (1-CLK_47) = a_20 * (1-CLK_47);
		a_21' * (1-CLK_47) = a_21 * (1-CLK_47);
		a_22' * (1-CLK_47) = a_22 * (1-CLK_47);
		a_23' * (1-CLK_47) = a_23 * (1-CLK_47);

		b_0' * (1-CLK_47) = b_0 * (1-CLK_47);
		b_1' * (1-CLK_47) = b_1 * (1-CLK_47);
		b_2' * (1-CLK_47) = b_2 * (1-CLK_47);
		b_3' * (1-CLK_47) = b_3 * (1-CLK_47);
		b_4' * (1-CLK_47) = b_4 * (1-CLK_47);
		b_5' * (1-CLK_47) = b_5 * (1-CLK_47);
		b_6' * (1-CLK_47) = b_6 * (1-CLK_47);
		b_7' * (1-CLK_47) = b_7 * (1-CLK_47);
		b_8' * (1-CLK_47) = b_8 * (1-CLK_47);
		b_9' * (1-CLK_47) = b_9 * (1-CLK_47);
		b_10' * (1-CLK_47) = b_10 * (1-CLK_47);
		b_11' * (1-CLK_47) = b_11 * (1-CLK_47);
		b_12' * (1-CLK_47) = b_12 * (1-CLK_47);
		b_13' * (1-CLK_47) = b_13 * (1-CLK_47);
		b_14' * (1-CLK_47) = b_14 * (1-CLK_47);
		b_15' * (1-CLK_47) = b_15 * (1-CLK_47);
		b_16' * (1-CLK_47) = b_16 * (1-CLK_47);
		b_17' * (1-CLK_47) = b_17 * (1-CLK_47);
		b_18' * (1-CLK_47) = b_18 * (1-CLK_47);
		b_19' * (1-CLK_47) = b_19 * (1-CLK_47);
		b_20' * (1-CLK_47) = b_20 * (1-CLK_47);
		b_21' * (1-CLK_47) = b_21 * (1-CLK_47);
		b_22' * (1-CLK_47) = b_22 * (1-CLK_47);
		b_23' * (1-CLK_47) = b_23 * (1-CLK_47);

		c_0' * (1-CLK_47) = c_0 * (1-CLK_47);
		c_1' * (1-CLK_47) = c_1 * (1-CLK_47);
		c_2' * (1-CLK_47) = c_2 * (1-CLK_47);
		c_3' * (1-CLK_47) = c_3 * (1-CLK_47);
		c_4' * (1-CLK_47) = c_4 * (1-CLK_47);
		c_5' * (1-CLK_47) = c_5 * (1-CLK_47);
		c_6' * (1-CLK_47) = c_6 * (1-CLK_47);
		c_7' * (1-CLK_47) = c_7 * (1-CLK_47);
		c_8' * (1-CLK_47) = c_8 * (1-CLK_47);
		c_9' * (1-CLK_47) = c_9 * (1-CLK_47);
		c_10' * (1-CLK_47) = c_10 * (1-CLK_47);
		c_11' * (1-CLK_47) = c_11 * (1-CLK_47);
		c_12' * (1-CLK_47) = c_12 * (1-CLK_47);
		c_13' * (1-CLK_47) = c_13 * (1-CLK_47);
		c_14' * (1-CLK_47) = c_14 * (1-CLK_47);
		c_15' * (1-CLK_47) = c_15 * (1-CLK_47);
		c_16' * (1-CLK_47) = c_16 * (1-CLK_47);
		c_17' * (1-CLK_47) = c_17 * (1-CLK_47);
		c_18' * (1-CLK_47) = c_18 * (1-CLK_47);
		c_19' * (1-CLK_47) = c_19 * (1-CLK_47);
		c_20' * (1-CLK_47) = c_20 * (1-CLK_47);
		c_21' * (1-CLK_47) = c_21 * (1-CLK_47);
		c_22' * (1-CLK_47) = c_22 * (1-CLK_47);
		c_23' * (1-CLK_47) = c_23 * (1-CLK_47);

		d_0' * (1-CLK_47) = d_0 * (1-CLK_47);
		d_1' * (1-CLK_47) = d_1 * (1-CLK_47);
		d_2' * (1-CLK_47) = d_2 * (1-CLK_47);
		d_3' * (1-CLK_47) = d_3 * (1-CLK_47);
		d_4' * (1-CLK_47) = d_4 * (1-CLK_47);
		d_5' * (1-CLK_47) = d_5 * (1-CLK_47);
		d_6' * (1-CLK_47) = d_6 * (1-CLK_47);
		d_7' * (1-CLK_47) = d_7 * (1-CLK_47);
		d_8' * (1-CLK_47) = d_8 * (1-CLK_47);
		d_9' * (1-CLK_47) = d_9 * (1-CLK_47);
		d_10' * (1-CLK_47) = d_10 * (1-CLK_47);
		d_11' * (1-CLK_47) = d_11 * (1-CLK_47);
		d_12' * (1-CLK_47) = d_12 * (1-CLK_47);
		d_13' * (1-CLK_47) = d_13 * (1-CLK_47);
		d_14' * (1-CLK_47) = d_14 * (1-CLK_47);
		d_15' * (1-CLK_47) = d_15 * (1-CLK_47);
		d_16' * (1-CLK_47) = d_16 * (1-CLK_47);
		d_17' * (1-CLK_47) = d_17 * (1-CLK_47);
		d_18' * (1-CLK_47) = d_18 * (1-CLK_47);
		d_19' * (1-CLK_47) = d_19 * (1-CLK_47);
		d_20' * (1-CLK_47) = d_20 * (1-CLK_47);
		d_21' * (1-CLK_47) = d_21 * (1-CLK_47);
		d_22' * (1-CLK_47) = d_22 * (1-CLK_47);
		d_23' * (1-CLK_47) = d_23 * (1-CLK_47);

		e_0' * (1-CLK_47) = e_0 * (1-CLK_47);
		e_1' * (1-CLK_47) = e_1 * (1-CLK_47);
		e_2' * (1-CLK_47) = e_2 * (1-CLK_47);
		e_3' * (1-CLK_47) = e_3 * (1-CLK_47);
		e_4' * (1-CLK_47) = e_4 * (1-CLK_47);
		e_5' * (1-CLK_47) = e_5 * (1-CLK_47);
		e_6' * (1-CLK_47) = e_6 * (1-CLK_47);
		e_7' * (1-CLK_47) = e_7 * (1-CLK_47);
		e_8' * (1-CLK_47) = e_8 * (1-CLK_47);
		e_9' * (1-CLK_47) = e_9 * (1-CLK_47);
		e_10' * (1-CLK_47) = e_10 * (1-CLK_47);
		e_11' * (1-CLK_47) = e_11 * (1-CLK_47);
		e_12' * (1-CLK_47) = e_12 * (1-CLK_47);
		e_13' * (1-CLK_47) = e_13 * (1-CLK_47);
		e_14' * (1-CLK_47) = e_14 * (1-CLK_47);
		e_15' * (1-CLK_47) = e_15 * (1-CLK_47);
		e_16' * (1-CLK_47) = e_16 * (1-CLK_47);
		e_17' * (1-CLK_47) = e_17 * (1-CLK_47);
		e_18' * (1-CLK_47) = e_18 * (1-CLK_47);
		e_19' * (1-CLK_47) = e_19 * (1-CLK_47);
		e_20' * (1-CLK_47) = e_20 * (1-CLK_47);
		e_21' * (1-CLK_47) = e_21 * (1-CLK_47);
		e_22' * (1-CLK_47) = e_22 * (1-CLK_47);
		e_23' * (1-CLK_47) = e_23 * (1-CLK_47);

		/****
		* RANGE CHECK A,B,C,Q
		*****/
		a_0*CLK_0 + a_1*CLK_1 + a_2*CLK_2 + a_3*CLK_3 + a_4*CLK_4 + a_5*CLK_5 + a_6*CLK_6 + a_7*CLK_7
			+ a_8*CLK_8 + a_9*CLK_9 + a_10*CLK_10 + a_11*CLK_11 + a_12*CLK_12 + a_13*CLK_13 + a_14*CLK_14 + a_15*CLK_15
			+ a_16*CLK_16 + a_17*CLK_17 + a_18*CLK_18 + a_19*CLK_19 + a_20*CLK_20 + a_21*CLK_21 + a_22*CLK_22 + a_23*CLK_23
			+ b_0*CLK_24 + b_1*CLK_25 + b_2*CLK_26 + b_3*CLK_27 + b_4*CLK_28 + b_5*CLK_29 + b_6*CLK_30 + b_7*CLK_31
			+ b_8*CLK_32 + b_9*CLK_33 + b_10*CLK_34 + b_11*CLK_35 + b_12*CLK_36 + b_13*CLK_37 + b_14*CLK_38 + b_15*CLK_39
			+ b_16*CLK_40 + b_17*CLK_41 + b_18*CLK_42 + b_19*CLK_43 + b_20*CLK_44 + b_21*CLK_45 + b_22*CLK_46 + b_23*CLK_47 in BYTE2;
			c_0*CLK_0 + c_1*CLK_1 + c_2*CLK_2 + c_3*CLK_3 + c_4*CLK_4 + c_5*CLK_5 + c_6*CLK_6 + c_7*CLK_7
			+ c_8*CLK_8 + c_9*CLK_9 + c_10*CLK_10 + c_11*CLK_11 + c_12*CLK_12 + c_13*CLK_13 + c_14*CLK_14 + c_15*CLK_15
			+ c_16*CLK_16 + c_17*CLK_17 + c_18*CLK_18 + c_19*CLK_19 + c_20*CLK_20 + c_21*CLK_21 + c_22*CLK_22 + c_23*CLK_23
			+ d_0*CLK_24 + d_1*CLK_25 + d_2*CLK_26 + d_3*CLK_27 + d_4*CLK_28 + d_5*CLK_29 + d_6*CLK_30 + d_7*CLK_31
			+ d_8*CLK_32 + d_9*CLK_33 + d_10*CLK_34 + d_11*CLK_35 + d_12*CLK_36 + d_13*CLK_37 + d_14*CLK_38 + d_15*CLK_39
			+ d_16*CLK_40 + d_17*CLK_41 + d_18*CLK_42 + d_19*CLK_43 + d_20*CLK_44 + d_21*CLK_45 + d_22*CLK_46 + d_23*CLK_47 in BYTE2;
			e_0*CLK_0 + e_1*CLK_1 + e_2*CLK_2 + e_3*CLK_3 + e_4*CLK_4 + e_5*CLK_5 + e_6*CLK_6 + e_7*CLK_7
			+ e_8*CLK_8 + e_9*CLK_9 + e_10*CLK_10 + e_11*CLK_11 + e_12*CLK_12 + e_13*CLK_13 + e_14*CLK_14 + e_15*CLK_15
			+ e_16*CLK_16 + e_17*CLK_17 + e_18*CLK_18 + e_19*CLK_19 + e_20*CLK_20 + e_21*CLK_21 + e_22*CLK_22 + e_23*CLK_23 in BYTE2;

		/*******
		* EQ: A * B + C = D * P + E
		*******/
		/*
		pol eq_0 =
			(a[0] * b[0] - 43691 * d[0])
			+ c[0] - e[0];
		*/
		col witness eq_0;
		col witness eq_1;
		col witness eq_2;
		col witness eq_3;
		col witness eq_4;
		col witness eq_5;
		col witness eq_6;
		col witness eq_7;
		col witness eq_8;
		col witness eq_9;
		col witness eq_10;
		col witness eq_11;
		col witness eq_12;
		col witness eq_13;
		col witness eq_14;
		col witness eq_15;
		col witness eq_16;
		col witness eq_17;
		col witness eq_18;
		col witness eq_19;
		col witness eq_20;
		col witness eq_21;
		col witness eq_22;
		col witness eq_23;
		col witness eq_24;
		col witness eq_25;
		col witness eq_26;
		col witness eq_27;
		col witness eq_28;
		col witness eq_29;
		col witness eq_30;
		col witness eq_31;
		col witness eq_32;
		col witness eq_33;
		col witness eq_34;
		col witness eq_35;
		col witness eq_36;
		col witness eq_37;
		col witness eq_38;
		col witness eq_39;
		col witness eq_40;
		col witness eq_41;
		col witness eq_42;
		col witness eq_43;
		col witness eq_44;
		col witness eq_45;
		col witness eq_46;
		col witness eq_47;

		eq_0 =
			(a_0 * b_0 - 43691 * d_0)
			+ c_0 - e_0;

		eq_1 =
			(a_0 * b_1 - 43691 * d_1) +
			(a_1 * b_0 - 65535 * d_0)
			+ c_1 - e_1;
		eq_2 =
			(a_0 * b_2 - 43691 * d_2) +
			(a_1 * b_1 - 65535 * d_1) +
			(a_2 * b_0 - 65535 * d_0)
			+ c_2 - e_2;
		eq_3 =
			(a_0 * b_3 - 43691 * d_3) +
			(a_1 * b_2 - 65535 * d_2) +
			(a_2 * b_1 - 65535 * d_1) +
			(a_3 * b_0 - 47614 * d_0)
			+ c_3 - e_3;
		eq_4 =
			(a_0 * b_4 - 43691 * d_4) +
			(a_1 * b_3 - 65535 * d_3) +
			(a_2 * b_2 - 65535 * d_2) +
			(a_3 * b_1 - 47614 * d_1) +
			(a_4 * b_0 - 65535 * d_0)
			+ c_4 - e_4;
		eq_5 =
			(a_0 * b_5 - 43691 * d_5) +
			(a_1 * b_4 - 65535 * d_4) +
			(a_2 * b_3 - 65535 * d_3) +
			(a_3 * b_2 - 47614 * d_2) +
			(a_4 * b_1 - 65535 * d_1) +
			(a_5 * b_0 - 45395 * d_0)
			+ c_5 - e_5;
		eq_6 =
			(a_0 * b_6 - 43691 * d_6) +
			(a_1 * b_5 - 65535 * d_5) +
			(a_2 * b_4 - 65535 * d_4) +
			(a_3 * b_3 - 47614 * d_3) +
			(a_4 * b_2 - 65535 * d_2) +
			(a_5 * b_1 - 45395 * d_1) +
			(a_6 * b_0 - 65534 * d_0)
			+ c_6 - e_6;
		eq_7 =
			(a_0 * b_7 - 43691 * d_7) +
			(a_1 * b_6 - 65535 * d_6) +
			(a_2 * b_5 - 65535 * d_5) +
			(a_3 * b_4 - 47614 * d_4) +
			(a_4 * b_3 - 65535 * d_3) +
			(a_5 * b_2 - 45395 * d_2) +
			(a_6 * b_1 - 65534 * d_1) +
			(a_7 * b_0 - 7851 * d_0)
			+ c_7 - e_7;
		eq_8 =
			(a_0 * b_8 - 43691 * d_8) +
			(a_1 * b_7 - 65535 * d_7) +
			(a_2 * b_6 - 65535 * d_6) +
			(a_3 * b_5 - 47614 * d_5) +
			(a_4 * b_4 - 65535 * d_4) +
			(a_5 * b_3 - 45395 * d_3) +
			(a_6 * b_2 - 65534 * d_2) +
			(a_7 * b_1 - 7851 * d_1) +
			(a_8 * b_0 - 63012 * d_0)
			+ c_8 - e_8;
		eq_9 =
			(a_0 * b_9 - 43691 * d_9) +
			(a_1 * b_8 - 65535 * d_8) +
			(a_2 * b_7 - 65535 * d_7) +
			(a_3 * b_6 - 47614 * d_6) +
			(a_4 * b_5 - 65535 * d_5) +
			(a_5 * b_4 - 45395 * d_4) +
			(a_6 * b_3 - 65534 * d_3) +
			(a_7 * b_2 - 7851 * d_2) +
			(a_8 * b_1 - 63012 * d_1) +
			(a_9 * b_0 - 63152 * d_0)
			+ c_9 - e_9;
		eq_10 =
			(a_0 * b_10 - 43691 * d_10) +
			(a_1 * b_9 - 65535 * d_9) +
			(a_2 * b_8 - 65535 * d_8) +
			(a_3 * b_7 - 47614 * d_7) +
			(a_4 * b_6 - 65535 * d_6) +
			(a_5 * b_5 - 45395 * d_5) +
			(a_6 * b_4 - 65534 * d_4) +
			(a_7 * b_3 - 7851 * d_3) +
			(a_8 * b_2 - 63012 * d_2) +
			(a_9 * b_1 - 63152 * d_1) +
			(a_10 * b_0 - 53920 * d_0)
			+ c_10 - e_10;
		eq_11 =
			(a_0 * b_11 - 43691 * d_11) +
			(a_1 * b_10 - 65535 * d_10) +
			(a_2 * b_9 - 65535 * d_9) +
			(a_3 * b_8 - 47614 * d_8) +
			(a_4 * b_7 - 65535 * d_7) +
			(a_5 * b_6 - 45395 * d_6) +
			(a_6 * b_5 - 65534 * d_5) +
			(a_7 * b_4 - 7851 * d_4) +
			(a_8 * b_3 - 63012 * d_3) +
			(a_9 * b_2 - 63152 * d_2) +
			(a_10 * b_1 - 53920 * d_1) +
			(a_11 * b_0 - 26416 * d_0)
			+ c_11 - e_11;
		eq_12 =
			(a_0 * b_12 - 43691 * d_12) +
			(a_1 * b_11 - 65535 * d_11) +
			(a_2 * b_10 - 65535 * d_10) +
			(a_3 * b_9 - 47614 * d_9) +
			(a_4 * b_8 - 65535 * d_8) +
			(a_5 * b_7 - 45395 * d_7) +
			(a_6 * b_6 - 65534 * d_6) +
			(a_7 * b_5 - 7851 * d_5) +
			(a_8 * b_4 - 63012 * d_4) +
			(a_9 * b_3 - 63152 * d_3) +
			(a_10 * b_2 - 53920 * d_2) +
			(a_11 * b_1 - 26416 * d_1) +
			(a_12 * b_0 - 4799 * d_0)
			+ c_12 - e_12;
		eq_13 =
			(a_0 * b_13 - 43691 * d_13) +
			(a_1 * b_12 - 65535 * d_12) +
			(a_2 * b_11 - 65535 * d_11) +
			(a_3 * b_10 - 47614 * d_10) +
			(a_4 * b_9 - 65535 * d_9) +
			(a_5 * b_8 - 45395 * d_8) +
			(a_6 * b_7 - 65534 * d_7) +
			(a_7 * b_6 - 7851 * d_6) +
			(a_8 * b_5 - 63012 * d_5) +
			(a_9 * b_4 - 63152 * d_4) +
			(a_10 * b_3 - 53920 * d_3) +
			(a_11 * b_2 - 26416 * d_2) +
			(a_12 * b_1 - 4799 * d_1) +
			(a_13 * b_0 - 62341 * d_0)
			+ c_13 - e_13;
		eq_14 =
			(a_0 * b_14 - 43691 * d_14) +
			(a_1 * b_13 - 65535 * d_13) +
			(a_2 * b_12 - 65535 * d_12) +
			(a_3 * b_11 - 47614 * d_11) +
			(a_4 * b_10 - 65535 * d_10) +
			(a_5 * b_9 - 45395 * d_9) +
			(a_6 * b_8 - 65534 * d_8) +
			(a_7 * b_7 - 7851 * d_7) +
			(a_8 * b_6 - 63012 * d_6) +
			(a_9 * b_5 - 63152 * d_5) +
			(a_10 * b_4 - 53920 * d_4) +
			(a_11 * b_3 - 26416 * d_3) +
			(a_12 * b_2 - 4799 * d_2) +
			(a_13 * b_1 - 62341 * d_1) +
			(a_14 * b_0 - 19332 * d_0)
			+ c_14 - e_14;
		eq_15 =
			(a_0 * b_15 - 43691 * d_15) +
			(a_1 * b_14 - 65535 * d_14) +
			(a_2 * b_13 - 65535 * d_13) +
			(a_3 * b_12 - 47614 * d_12) +
			(a_4 * b_11 - 65535 * d_11) +
			(a_5 * b_10 - 45395 * d_10) +
			(a_6 * b_9 - 65534 * d_9) +
			(a_7 * b_8 - 7851 * d_8) +
			(a_8 * b_7 - 63012 * d_7) +
			(a_9 * b_6 - 63152 * d_6) +
			(a_10 * b_5 - 53920 * d_5) +
			(a_11 * b_4 - 26416 * d_4) +
			(a_12 * b_3 - 4799 * d_3) +
			(a_13 * b_2 - 62341 * d_2) +
			(a_14 * b_1 - 19332 * d_1) +
			(a_15 * b_0 - 25719 * d_0)
			+ c_15 - e_15;
		eq_16 =
			(a_0 * b_16 - 43691 * d_16) +
			(a_1 * b_15 - 65535 * d_15) +
			(a_2 * b_14 - 65535 * d_14) +
			(a_3 * b_13 - 47614 * d_13) +
			(a_4 * b_12 - 65535 * d_12) +
			(a_5 * b_11 - 45395 * d_11) +
			(a_6 * b_10 - 65534 * d_10) +
			(a_7 * b_9 - 7851 * d_9) +
			(a_8 * b_8 - 63012 * d_8) +
			(a_9 * b_7 - 63152 * d_7) +
			(a_10 * b_6 - 53920 * d_6) +
			(a_11 * b_5 - 26416 * d_5) +
			(a_12 * b_4 - 4799 * d_4) +
			(a_13 * b_3 - 62341 * d_3) +
			(a_14 * b_2 - 19332 * d_2) +
			(a_15 * b_1 - 25719 * d_1) +
			(a_16 * b_0 - 44247 * d_0)
			+ c_16 - e_16;
		eq_17 =
			(a_0 * b_17 - 43691 * d_17) +
			(a_1 * b_16 - 65535 * d_16) +
			(a_2 * b_15 - 65535 * d_15) +
			(a_3 * b_14 - 47614 * d_14) +
			(a_4 * b_13 - 65535 * d_13) +
			(a_5 * b_12 - 45395 * d_12) +
			(a_6 * b_11 - 65534 * d_11) +
			(a_7 * b_10 - 7851 * d_10) +
			(a_8 * b_9 - 63012 * d_9) +
			(a_9 * b_8 - 63152 * d_8) +
			(a_10 * b_7 - 53920 * d_7) +
			(a_11 * b_6 - 26416 * d_6) +
			(a_12 * b_5 - 4799 * d_5) +
			(a_13 * b_4 - 62341 * d_4) +
			(a_14 * b_3 - 19332 * d_3) +
			(a_15 * b_2 - 25719 * d_2) +
			(a_16 * b_1 - 44247 * d_1) +
			(a_17 * b_0 - 17227 * d_0)
			+ c_17 - e_17;
		eq_18 =
			(a_0 * b_18 - 43691 * d_18) +
			(a_1 * b_17 - 65535 * d_17) +
			(a_2 * b_16 - 65535 * d_16) +
			(a_3 * b_15 - 47614 * d_15) +
			(a_4 * b_14 - 65535 * d_14) +
			(a_5 * b_13 - 45395 * d_13) +
			(a_6 * b_12 - 65534 * d_12) +
			(a_7 * b_11 - 7851 * d_11) +
			(a_8 * b_10 - 63012 * d_10) +
			(a_9 * b_9 - 63152 * d_9) +
			(a_10 * b_8 - 53920 * d_8) +
			(a_11 * b_7 - 26416 * d_7) +
			(a_12 * b_6 - 4799 * d_6) +
			(a_13 * b_5 - 62341 * d_5) +
			(a_14 * b_4 - 19332 * d_4) +
			(a_15 * b_3 - 25719 * d_3) +
			(a_16 * b_2 - 44247 * d_2) +
			(a_17 * b_1 - 17227 * d_1) +
			(a_18 * b_0 - 42934 * d_0)
			+ c_18 - e_18;
		eq_19 =
			(a_0 * b_19 - 43691 * d_19) +
			(a_1 * b_18 - 65535 * d_18) +
			(a_2 * b_17 - 65535 * d_17) +
			(a_3 * b_16 - 47614 * d_16) +
			(a_4 * b_15 - 65535 * d_15) +
			(a_5 * b_14 - 45395 * d_14) +
			(a_6 * b_13 - 65534 * d_13) +
			(a_7 * b_12 - 7851 * d_12) +
			(a_8 * b_11 - 63012 * d_11) +
			(a_9 * b_10 - 63152 * d_10) +
			(a_10 * b_9 - 53920 * d_9) +
			(a_11 * b_8 - 26416 * d_8) +
			(a_12 * b_7 - 4799 * d_7) +
			(a_13 * b_6 - 62341 * d_6) +
			(a_14 * b_5 - 19332 * d_5) +
			(a_15 * b_4 - 25719 * d_4) +
			(a_16 * b_3 - 44247 * d_3) +
			(a_17 * b_2 - 17227 * d_2) +
			(a_18 * b_1 - 42934 * d_1) +
			(a_19 * b_0 - 19227 * d_0)
			+ c_19 - e_19;
		eq_20 =
			(a_0 * b_20 - 43691 * d_20) +
			(a_1 * b_19 - 65535 * d_19) +
			(a_2 * b_18 - 65535 * d_18) +
			(a_3 * b_17 - 47614 * d_17) +
			(a_4 * b_16 - 65535 * d_16) +
			(a_5 * b_15 - 45395 * d_15) +
			(a_6 * b_14 - 65534 * d_14) +
			(a_7 * b_13 - 7851 * d_13) +
			(a_8 * b_12 - 63012 * d_12) +
			(a_9 * b_11 - 63152 * d_11) +
			(a_10 * b_10 - 53920 * d_10) +
			(a_11 * b_9 - 26416 * d_9) +
			(a_12 * b_8 - 4799 * d_8) +
			(a_13 * b_7 - 62341 * d_7) +
			(a_14 * b_6 - 19332 * d_6) +
			(a_15 * b_5 - 25719 * d_5) +
			(a_16 * b_4 - 44247 * d_4) +
			(a_17 * b_3 - 17227 * d_3) +
			(a_18 * b_2 - 42934 * d_2) +
			(a_19 * b_1 - 19227 * d_1) +
			(a_20 * b_0 - 59034 * d_0)
			+ c_20 - e_20;
		eq_21 =
			(a_0 * b_21 - 43691 * d_21) +
			(a_1 * b_20 - 65535 * d_20) +
			(a_2 * b_19 - 65535 * d_19) +
			(a_3 * b_18 - 47614 * d_18) +
			(a_4 * b_17 - 65535 * d_17) +
			(a_5 * b_16 - 45395 * d_16) +
			(a_6 * b_15 - 65534 * d_15) +
			(a_7 * b_14 - 7851 * d_14) +
			(a_8 * b_13 - 63012 * d_13) +
			(a_9 * b_12 - 63152 * d_12) +
			(a_10 * b_11 - 53920 * d_11) +
			(a_11 * b_10 - 26416 * d_10) +
			(a_12 * b_9 - 4799 * d_9) +
			(a_13 * b_8 - 62341 * d_8) +
			(a_14 * b_7 - 19332 * d_7) +
			(a_15 * b_6 - 25719 * d_6) +
			(a_16 * b_5 - 44247 * d_5) +
			(a_17 * b_4 - 17227 * d_4) +
			(a_18 * b_3 - 42934 * d_3) +
			(a_19 * b_2 - 19227 * d_2) +
			(a_20 * b_1 - 59034 * d_1) +
			(a_21 * b_0 - 14719 * d_0)
			+ c_21 - e_21;
		eq_22 =
			(a_0 * b_22 - 43691 * d_22) +
			(a_1 * b_21 - 65535 * d_21) +
			(a_2 * b_20 - 65535 * d_20) +
			(a_3 * b_19 - 47614 * d_19) +
			(a_4 * b_18 - 65535 * d_18) +
			(a_5 * b_17 - 45395 * d_17) +
			(a_6 * b_16 - 65534 * d_16) +
			(a_7 * b_15 - 7851 * d_15) +
			(a_8 * b_14 - 63012 * d_14) +
			(a_9 * b_13 - 63152 * d_13) +
			(a_10 * b_12 - 53920 * d_12) +
			(a_11 * b_11 - 26416 * d_11) +
			(a_12 * b_10 - 4799 * d_10) +
			(a_13 * b_9 - 62341 * d_9) +
			(a_14 * b_8 - 19332 * d_8) +
			(a_15 * b_7 - 25719 * d_7) +
			(a_16 * b_6 - 44247 * d_6) +
			(a_17 * b_5 - 17227 * d_5) +
			(a_18 * b_4 - 42934 * d_4) +
			(a_19 * b_3 - 19227 * d_3) +
			(a_20 * b_2 - 59034 * d_2) +
			(a_21 * b_1 - 14719 * d_1) +
			(a_22 * b_0 - 4586 * d_0)
			+ c_22 - e_22;
		eq_23 =
			(a_0 * b_23 - 43691 * d_23) +
			(a_1 * b_22 - 65535 * d_22) +
			(a_2 * b_21 - 65535 * d_21) +
			(a_3 * b_20 - 47614 * d_20) +
			(a_4 * b_19 - 65535 * d_19) +
			(a_5 * b_18 - 45395 * d_18) +
			(a_6 * b_17 - 65534 * d_17) +
			(a_7 * b_16 - 7851 * d_16) +
			(a_8 * b_15 - 63012 * d_15) +
			(a_9 * b_14 - 63152 * d_14) +
			(a_10 * b_13 - 53920 * d_13) +
			(a_11 * b_12 - 26416 * d_12) +
			(a_12 * b_11 - 4799 * d_11) +
			(a_13 * b_10 - 62341 * d_10) +
			(a_14 * b_9 - 19332 * d_9) +
			(a_15 * b_8 - 25719 * d_8) +
			(a_16 * b_7 - 44247 * d_7) +
			(a_17 * b_6 - 17227 * d_6) +
			(a_18 * b_5 - 42934 * d_5) +
			(a_19 * b_4 - 19227 * d_4) +
			(a_20 * b_3 - 59034 * d_3) +
			(a_21 * b_2 - 14719 * d_2) +
			(a_22 * b_1 - 4586 * d_1) +
			(a_23 * b_0 - 6657 * d_0)
			+ c_23 - e_23;
		eq_24 =
			(a_1 * b_23 - 65535 * d_23) +
			(a_2 * b_22 - 65535 * d_22) +
			(a_3 * b_21 - 47614 * d_21) +
			(a_4 * b_20 - 65535 * d_20) +
			(a_5 * b_19 - 45395 * d_19) +
			(a_6 * b_18 - 65534 * d_18) +
			(a_7 * b_17 - 7851 * d_17) +
			(a_8 * b_16 - 63012 * d_16) +
			(a_9 * b_15 - 63152 * d_15) +
			(a_10 * b_14 - 53920 * d_14) +
			(a_11 * b_13 - 26416 * d_13) +
			(a_12 * b_12 - 4799 * d_12) +
			(a_13 * b_11 - 62341 * d_11) +
			(a_14 * b_10 - 19332 * d_10) +
			(a_15 * b_9 - 25719 * d_9) +
			(a_16 * b_8 - 44247 * d_8) +
			(a_17 * b_7 - 17227 * d_7) +
			(a_18 * b_6 - 42934 * d_6) +
			(a_19 * b_5 - 19227 * d_5) +
			(a_20 * b_4 - 59034 * d_4) +
			(a_21 * b_3 - 14719 * d_3) +
			(a_22 * b_2 - 4586 * d_2) +
			(a_23 * b_1 - 6657 * d_1);
		eq_25 =
			(a_2 * b_23 - 65535 * d_23) +
			(a_3 * b_22 - 47614 * d_22) +
			(a_4 * b_21 - 65535 * d_21) +
			(a_5 * b_20 - 45395 * d_20) +
			(a_6 * b_19 - 65534 * d_19) +
			(a_7 * b_18 - 7851 * d_18) +
			(a_8 * b_17 - 63012 * d_17) +
			(a_9 * b_16 - 63152 * d_16) +
			(a_10 * b_15 - 53920 * d_15) +
			(a_11 * b_14 - 26416 * d_14) +
			(a_12 * b_13 - 4799 * d_13) +
			(a_13 * b_12 - 62341 * d_12) +
			(a_14 * b_11 - 19332 * d_11) +
			(a_15 * b_10 - 25719 * d_10) +
			(a_16 * b_9 - 44247 * d_9) +
			(a_17 * b_8 - 17227 * d_8) +
			(a_18 * b_7 - 42934 * d_7) +
			(a_19 * b_6 - 19227 * d_6) +
			(a_20 * b_5 - 59034 * d_5) +
			(a_21 * b_4 - 14719 * d_4) +
			(a_22 * b_3 - 4586 * d_3) +
			(a_23 * b_2 - 6657 * d_2);
		eq_26 =
			(a_3 * b_23 - 47614 * d_23) +
			(a_4 * b_22 - 65535 * d_22) +
			(a_5 * b_21 - 45395 * d_21) +
			(a_6 * b_20 - 65534 * d_20) +
			(a_7 * b_19 - 7851 * d_19) +
			(a_8 * b_18 - 63012 * d_18) +
			(a_9 * b_17 - 63152 * d_17) +
			(a_10 * b_16 - 53920 * d_16) +
			(a_11 * b_15 - 26416 * d_15) +
			(a_12 * b_14 - 4799 * d_14) +
			(a_13 * b_13 - 62341 * d_13) +
			(a_14 * b_12 - 19332 * d_12) +
			(a_15 * b_11 - 25719 * d_11) +
			(a_16 * b_10 - 44247 * d_10) +
			(a_17 * b_9 - 17227 * d_9) +
			(a_18 * b_8 - 42934 * d_8) +
			(a_19 * b_7 - 19227 * d_7) +
			(a_20 * b_6 - 59034 * d_6) +
			(a_21 * b_5 - 14719 * d_5) +
			(a_22 * b_4 - 4586 * d_4) +
			(a_23 * b_3 - 6657 * d_3);
		eq_27 =
			(a_4 * b_23 - 65535 * d_23) +
			(a_5 * b_22 - 45395 * d_22) +
			(a_6 * b_21 - 65534 * d_21) +
			(a_7 * b_20 - 7851 * d_20) +
			(a_8 * b_19 - 63012 * d_19) +
			(a_9 * b_18 - 63152 * d_18) +
			(a_10 * b_17 - 53920 * d_17) +
			(a_11 * b_16 - 26416 * d_16) +
			(a_12 * b_15 - 4799 * d_15) +
			(a_13 * b_14 - 62341 * d_14) +
			(a_14 * b_13 - 19332 * d_13) +
			(a_15 * b_12 - 25719 * d_12) +
			(a_16 * b_11 - 44247 * d_11) +
			(a_17 * b_10 - 17227 * d_10) +
			(a_18 * b_9 - 42934 * d_9) +
			(a_19 * b_8 - 19227 * d_8) +
			(a_20 * b_7 - 59034 * d_7) +
			(a_21 * b_6 - 14719 * d_6) +
			(a_22 * b_5 - 4586 * d_5) +
			(a_23 * b_4 - 6657 * d_4);
		eq_28 =
			(a_5 * b_23 - 45395 * d_23) +
			(a_6 * b_22 - 65534 * d_22) +
			(a_7 * b_21 - 7851 * d_21) +
			(a_8 * b_20 - 63012 * d_20) +
			(a_9 * b_19 - 63152 * d_19) +
			(a_10 * b_18 - 53920 * d_18) +
			(a_11 * b_17 - 26416 * d_17) +
			(a_12 * b_16 - 4799 * d_16) +
			(a_13 * b_15 - 62341 * d_15) +
			(a_14 * b_14 - 19332 * d_14) +
			(a_15 * b_13 - 25719 * d_13) +
			(a_16 * b_12 - 44247 * d_12) +
			(a_17 * b_11 - 17227 * d_11) +
			(a_18 * b_10 - 42934 * d_10) +
			(a_19 * b_9 - 19227 * d_9) +
			(a_20 * b_8 - 59034 * d_8) +
			(a_21 * b_7 - 14719 * d_7) +
			(a_22 * b_6 - 4586 * d_6) +
			(a_23 * b_5 - 6657 * d_5);
		eq_29 =
			(a_6 * b_23 - 65534 * d_23) +
			(a_7 * b_22 - 7851 * d_22) +
			(a_8 * b_21 - 63012 * d_21) +
			(a_9 * b_20 - 63152 * d_20) +
			(a_10 * b_19 - 53920 * d_19) +
			(a_11 * b_18 - 26416 * d_18) +
			(a_12 * b_17 - 4799 * d_17) +
			(a_13 * b_16 - 62341 * d_16) +
			(a_14 * b_15 - 19332 * d_15) +
			(a_15 * b_14 - 25719 * d_14) +
			(a_16 * b_13 - 44247 * d_13) +
			(a_17 * b_12 - 17227 * d_12) +
			(a_18 * b_11 - 42934 * d_11) +
			(a_19 * b_10 - 19227 * d_10) +
			(a_20 * b_9 - 59034 * d_9) +
			(a_21 * b_8 - 14719 * d_8) +
			(a_22 * b_7 - 4586 * d_7) +
			(a_23 * b_6 - 6657 * d_6);
		eq_30 =
			(a_7 * b_23 - 7851 * d_23) +
			(a_8 * b_22 - 63012 * d_22) +
			(a_9 * b_21 - 63152 * d_21) +
			(a_10 * b_20 - 53920 * d_20) +
			(a_11 * b_19 - 26416 * d_19) +
			(a_12 * b_18 - 4799 * d_18) +
			(a_13 * b_17 - 62341 * d_17) +
			(a_14 * b_16 - 19332 * d_16) +
			(a_15 * b_15 - 25719 * d_15) +
			(a_16 * b_14 - 44247 * d_14) +
			(a_17 * b_13 - 17227 * d_13) +
			(a_18 * b_12 - 42934 * d_12) +
			(a_19 * b_11 - 19227 * d_11) +
			(a_20 * b_10 - 59034 * d_10) +
			(a_21 * b_9 - 14719 * d_9) +
			(a_22 * b_8 - 4586 * d_8) +
			(a_23 * b_7 - 6657 * d_7);
		eq_31 =
			(a_8 * b_23 - 63012 * d_23) +
			(a_9 * b_22 - 63152 * d_22) +
			(a_10 * b_21 - 53920 * d_21) +
			(a_11 * b_20 - 26416 * d_20) +
			(a_12 * b_19 - 4799 * d_19) +
			(a_13 * b_18 - 62341 * d_18) +
			(a_14 * b_17 - 19332 * d_17) +
			(a_15 * b_16 - 25719 * d_16) +
			(a_16 * b_15 - 44247 * d_15) +
			(a_17 * b_14 - 17227 * d_14) +
			(a_18 * b_13 - 42934 * d_13) +
			(a_19 * b_12 - 19227 * d_12) +
			(a_20 * b_11 - 59034 * d_11) +
			(a_21 * b_10 - 14719 * d_10) +
			(a_22 * b_9 - 4586 * d_9) +
			(a_23 * b_8 - 6657 * d_8);
		eq_32 =
			(a_9 * b_23 - 63152 * d_23) +
			(a_10 * b_22 - 53920 * d_22) +
			(a_11 * b_21 - 26416 * d_21) +
			(a_12 * b_20 - 4799 * d_20) +
			(a_13 * b_19 - 62341 * d_19) +
			(a_14 * b_18 - 19332 * d_18) +
			(a_15 * b_17 - 25719 * d_17) +
			(a_16 * b_16 - 44247 * d_16) +
			(a_17 * b_15 - 17227 * d_15) +
			(a_18 * b_14 - 42934 * d_14) +
			(a_19 * b_13 - 19227 * d_13) +
			(a_20 * b_12 - 59034 * d_12) +
			(a_21 * b_11 - 14719 * d_11) +
			(a_22 * b_10 - 4586 * d_10) +
			(a_23 * b_9 - 6657 * d_9);
		eq_33 =
			(a_10 * b_23 - 53920 * d_23) +
			(a_11 * b_22 - 26416 * d_22) +
			(a_12 * b_21 - 4799 * d_21) +
			(a_13 * b_20 - 62341 * d_20) +
			(a_14 * b_19 - 19332 * d_19) +
			(a_15 * b_18 - 25719 * d_18) +
			(a_16 * b_17 - 44247 * d_17) +
			(a_17 * b_16 - 17227 * d_16) +
			(a_18 * b_15 - 42934 * d_15) +
			(a_19 * b_14 - 19227 * d_14) +
			(a_20 * b_13 - 59034 * d_13) +
			(a_21 * b_12 - 14719 * d_12) +
			(a_22 * b_11 - 4586 * d_11) +
			(a_23 * b_10 - 6657 * d_10);
		eq_34 =
			(a_11 * b_23 - 26416 * d_23) +
			(a_12 * b_22 - 4799 * d_22) +
			(a_13 * b_21 - 62341 * d_21) +
			(a_14 * b_20 - 19332 * d_20) +
			(a_15 * b_19 - 25719 * d_19) +
			(a_16 * b_18 - 44247 * d_18) +
			(a_17 * b_17 - 17227 * d_17) +
			(a_18 * b_16 - 42934 * d_16) +
			(a_19 * b_15 - 19227 * d_15) +
			(a_20 * b_14 - 59034 * d_14) +
			(a_21 * b_13 - 14719 * d_13) +
			(a_22 * b_12 - 4586 * d_12) +
			(a_23 * b_11 - 6657 * d_11);
		eq_35 =
			(a_12 * b_23 - 4799 * d_23) +
			(a_13 * b_22 - 62341 * d_22) +
			(a_14 * b_21 - 19332 * d_21) +
			(a_15 * b_20 - 25719 * d_20) +
			(a_16 * b_19 - 44247 * d_19) +
			(a_17 * b_18 - 17227 * d_18) +
			(a_18 * b_17 - 42934 * d_17) +
			(a_19 * b_16 - 19227 * d_16) +
			(a_20 * b_15 - 59034 * d_15) +
			(a_21 * b_14 - 14719 * d_14) +
			(a_22 * b_13 - 4586 * d_13) +
			(a_23 * b_12 - 6657 * d_12);
		eq_36 =
			(a_13 * b_23 - 62341 * d_23) +
			(a_14 * b_22 - 19332 * d_22) +
			(a_15 * b_21 - 25719 * d_21) +
			(a_16 * b_20 - 44247 * d_20) +
			(a_17 * b_19 - 17227 * d_19) +
			(a_18 * b_18 - 42934 * d_18) +
			(a_19 * b_17 - 19227 * d_17) +
			(a_20 * b_16 - 59034 * d_16) +
			(a_21 * b_15 - 14719 * d_15) +
			(a_22 * b_14 - 4586 * d_14) +
			(a_23 * b_13 - 6657 * d_13);
		eq_37 =
			(a_14 * b_23 - 19332 * d_23) +
			(a_15 * b_22 - 25719 * d_22) +
			(a_16 * b_21 - 44247 * d_21) +
			(a_17 * b_20 - 17227 * d_20) +
			(a_18 * b_19 - 42934 * d_19) +
			(a_19 * b_18 - 19227 * d_18) +
			(a_20 * b_17 - 59034 * d_17) +
			(a_21 * b_16 - 14719 * d_16) +
			(a_22 * b_15 - 4586 * d_15) +
			(a_23 * b_14 - 6657 * d_14);
		eq_38 =
			(a_15 * b_23 - 25719 * d_23) +
			(a_16 * b_22 - 44247 * d_22) +
			(a_17 * b_21 - 17227 * d_21) +
			(a_18 * b_20 - 42934 * d_20) +
			(a_19 * b_19 - 19227 * d_19) +
			(a_20 * b_18 - 59034 * d_18) +
			(a_21 * b_17 - 14719 * d_17) +
			(a_22 * b_16 - 4586 * d_16) +
			(a_23 * b_15 - 6657 * d_15);
		eq_39 =
			(a_16 * b_23 - 44247 * d_23) +
			(a_17 * b_22 - 17227 * d_22) +
			(a_18 * b_21 - 42934 * d_21) +
			(a_19 * b_20 - 19227 * d_20) +
			(a_20 * b_19 - 59034 * d_19) +
			(a_21 * b_18 - 14719 * d_18) +
			(a_22 * b_17 - 4586 * d_17) +
			(a_23 * b_16 - 6657 * d_16);
		eq_40 =
			(a_17 * b_23 - 17227 * d_23) +
			(a_18 * b_22 - 42934 * d_22) +
			(a_19 * b_21 - 19227 * d_21) +
			(a_20 * b_20 - 59034 * d_20) +
			(a_21 * b_19 - 14719 * d_19) +
			(a_22 * b_18 - 4586 * d_18) +
			(a_23 * b_17 - 6657 * d_17);
		eq_41 =
			(a_18 * b_23 - 42934 * d_23) +
			(a_19 * b_22 - 19227 * d_22) +
			(a_20 * b_21 - 59034 * d_21) +
			(a_21 * b_20 - 14719 * d_20) +
			(a_22 * b_19 - 4586 * d_19) +
			(a_23 * b_18 - 6657 * d_18);
		eq_42 =
			(a_19 * b_23 - 19227 * d_23) +
			(a_20 * b_22 - 59034 * d_22) +
			(a_21 * b_21 - 14719 * d_21) +
			(a_22 * b_20 - 4586 * d_20) +
			(a_23 * b_19 - 6657 * d_19);
		eq_43 =
			(a_20 * b_23 - 59034 * d_23) +
			(a_21 * b_22 - 14719 * d_22) +
			(a_22 * b_21 - 4586 * d_21) +
			(a_23 * b_20 - 6657 * d_20);
		eq_44 =
			(a_21 * b_23 - 14719 * d_23) +
			(a_22 * b_22 - 4586 * d_22) +
			(a_23 * b_21 - 6657 * d_21);
		eq_45 =
			(a_22 * b_23 - 4586 * d_23) +
			(a_23 * b_22 - 6657 * d_22);
		eq_46 =
			(a_23 * b_23 - 6657 * d_23);
		eq_47 = 0;

		col witness eq;
		eq = eq_0*CLK_0 + eq_1*CLK_1 + eq_2*CLK_2 + eq_3*CLK_3 + eq_4*CLK_4 + eq_5*CLK_5 + eq_6*CLK_6 + eq_7*CLK_7
			+ eq_8*CLK_8 + eq_9*CLK_9 + eq_10*CLK_10 + eq_11*CLK_11 + eq_12*CLK_12 + eq_13*CLK_13 + eq_14*CLK_14 + eq_15*CLK_15
			+ eq_16*CLK_16 + eq_17*CLK_17 + eq_18*CLK_18 + eq_19*CLK_19 + eq_20*CLK_20 + eq_21*CLK_21 + eq_22*CLK_22 + eq_23*CLK_23
			+ eq_24*CLK_24 + eq_25*CLK_25 + eq_26*CLK_26 + eq_27*CLK_27 + eq_28*CLK_28 + eq_29*CLK_29 + eq_30*CLK_30 + eq_31*CLK_31
			+ eq_32*CLK_32 + eq_33*CLK_33 + eq_34*CLK_34 + eq_35*CLK_35 + eq_36*CLK_36 + eq_37*CLK_37 + eq_38*CLK_38 + eq_39*CLK_39
			+ eq_40*CLK_40 + eq_41*CLK_41 + eq_42*CLK_42 + eq_43*CLK_43 + eq_44*CLK_44 + eq_45*CLK_45 + eq_46*CLK_46 + eq_47*CLK_47;

		// pol commit carry;
		col fixed carry = [0]*;

		// TODO fix carry
		// eq + carry = carry' * 2**16;

		eq * carry = 0;  // REMOVE

		// NOTE: non complete PIL, missing implement carry range check
   }
}


machine Main {

	degree 65536;

	BLS12_381 pairing;

	reg pc[@pc];

	function main {
		return;
	}
}
