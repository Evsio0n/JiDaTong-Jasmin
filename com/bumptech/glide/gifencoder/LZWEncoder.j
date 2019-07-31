.bytecode 50.0
.class synchronized com/bumptech/glide/gifencoder/LZWEncoder
.super java/lang/Object

.field static final 'BITS' I = 12


.field private static final 'EOF' I = -1


.field static final 'HSIZE' I = 5003


.field 'ClearCode' I

.field 'EOFCode' I

.field 'a_count' I

.field 'accum' [B

.field 'clear_flg' Z

.field 'codetab' [I

.field private 'curPixel' I

.field 'cur_accum' I

.field 'cur_bits' I

.field 'free_ent' I

.field 'g_init_bits' I

.field 'hsize' I

.field 'htab' [I

.field private 'imgH' I

.field private 'imgW' I

.field private 'initCodeSize' I

.field 'masks' [I

.field 'maxbits' I

.field 'maxcode' I

.field 'maxmaxcode' I

.field 'n_bits' I

.field private 'pixAry' [B

.field private 'remaining' I

.method <init>(II[BI)V
aload 0
invokespecial java/lang/Object/<init>()V
aload 0
bipush 12
putfield com/bumptech/glide/gifencoder/LZWEncoder/maxbits I
aload 0
sipush 4096
putfield com/bumptech/glide/gifencoder/LZWEncoder/maxmaxcode I
aload 0
sipush 5003
newarray int
putfield com/bumptech/glide/gifencoder/LZWEncoder/htab [I
aload 0
sipush 5003
newarray int
putfield com/bumptech/glide/gifencoder/LZWEncoder/codetab [I
aload 0
sipush 5003
putfield com/bumptech/glide/gifencoder/LZWEncoder/hsize I
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/LZWEncoder/free_ent I
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/LZWEncoder/clear_flg Z
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/LZWEncoder/cur_accum I
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/LZWEncoder/cur_bits I
aload 0
bipush 17
newarray int
dup
iconst_0
iconst_0
iastore
dup
iconst_1
iconst_1
iastore
dup
iconst_2
iconst_3
iastore
dup
iconst_3
bipush 7
iastore
dup
iconst_4
bipush 15
iastore
dup
iconst_5
bipush 31
iastore
dup
bipush 6
bipush 63
iastore
dup
bipush 7
bipush 127
iastore
dup
bipush 8
sipush 255
iastore
dup
bipush 9
sipush 511
iastore
dup
bipush 10
sipush 1023
iastore
dup
bipush 11
sipush 2047
iastore
dup
bipush 12
sipush 4095
iastore
dup
bipush 13
sipush 8191
iastore
dup
bipush 14
sipush 16383
iastore
dup
bipush 15
sipush 32767
iastore
dup
bipush 16
ldc_w 65535
iastore
putfield com/bumptech/glide/gifencoder/LZWEncoder/masks [I
aload 0
sipush 256
newarray byte
putfield com/bumptech/glide/gifencoder/LZWEncoder/accum [B
aload 0
iload 1
putfield com/bumptech/glide/gifencoder/LZWEncoder/imgW I
aload 0
iload 2
putfield com/bumptech/glide/gifencoder/LZWEncoder/imgH I
aload 0
aload 3
putfield com/bumptech/glide/gifencoder/LZWEncoder/pixAry [B
aload 0
iconst_2
iload 4
invokestatic java/lang/Math/max(II)I
putfield com/bumptech/glide/gifencoder/LZWEncoder/initCodeSize I
return
.limit locals 5
.limit stack 5
.end method

.method private nextPixel()I
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/remaining I
ifne L0
iconst_m1
ireturn
L0:
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/remaining I
iconst_1
isub
putfield com/bumptech/glide/gifencoder/LZWEncoder/remaining I
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/pixAry [B
astore 2
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/curPixel I
istore 1
aload 0
iload 1
iconst_1
iadd
putfield com/bumptech/glide/gifencoder/LZWEncoder/curPixel I
aload 2
iload 1
baload
sipush 255
iand
ireturn
.limit locals 3
.limit stack 3
.end method

.method final MAXCODE(I)I
iconst_1
iload 1
ishl
iconst_1
isub
ireturn
.limit locals 2
.limit stack 2
.end method

.method char_out(BLjava/io/OutputStream;)V
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/accum [B
astore 4
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/a_count I
istore 3
aload 0
iload 3
iconst_1
iadd
putfield com/bumptech/glide/gifencoder/LZWEncoder/a_count I
aload 4
iload 3
iload 1
bastore
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/a_count I
sipush 254
if_icmplt L0
aload 0
aload 2
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/flush_char(Ljava/io/OutputStream;)V
L0:
return
.limit locals 5
.limit stack 3
.end method

.method cl_block(Ljava/io/OutputStream;)V
.throws java/io/IOException
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/hsize I
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/cl_hash(I)V
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/ClearCode I
iconst_2
iadd
putfield com/bumptech/glide/gifencoder/LZWEncoder/free_ent I
aload 0
iconst_1
putfield com/bumptech/glide/gifencoder/LZWEncoder/clear_flg Z
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/ClearCode I
aload 1
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/output(ILjava/io/OutputStream;)V
return
.limit locals 2
.limit stack 3
.end method

.method cl_hash(I)V
iconst_0
istore 2
L0:
iload 2
iload 1
if_icmpge L1
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/htab [I
iload 2
iconst_m1
iastore
iload 2
iconst_1
iadd
istore 2
goto L0
L1:
return
.limit locals 3
.limit stack 3
.end method

.method compress(ILjava/io/OutputStream;)V
.throws java/io/IOException
aload 0
iload 1
putfield com/bumptech/glide/gifencoder/LZWEncoder/g_init_bits I
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/LZWEncoder/clear_flg Z
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/g_init_bits I
putfield com/bumptech/glide/gifencoder/LZWEncoder/n_bits I
aload 0
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/n_bits I
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/MAXCODE(I)I
putfield com/bumptech/glide/gifencoder/LZWEncoder/maxcode I
aload 0
iconst_1
iload 1
iconst_1
isub
ishl
putfield com/bumptech/glide/gifencoder/LZWEncoder/ClearCode I
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/ClearCode I
iconst_1
iadd
putfield com/bumptech/glide/gifencoder/LZWEncoder/EOFCode I
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/ClearCode I
iconst_2
iadd
putfield com/bumptech/glide/gifencoder/LZWEncoder/free_ent I
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/LZWEncoder/a_count I
aload 0
invokespecial com/bumptech/glide/gifencoder/LZWEncoder/nextPixel()I
istore 3
iconst_0
istore 4
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/hsize I
istore 1
L0:
iload 1
ldc_w 65536
if_icmpge L1
iload 4
iconst_1
iadd
istore 4
iload 1
iconst_2
imul
istore 1
goto L0
L1:
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/hsize I
istore 8
aload 0
iload 8
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/cl_hash(I)V
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/ClearCode I
aload 2
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/output(ILjava/io/OutputStream;)V
iload 3
istore 1
L2:
aload 0
invokespecial com/bumptech/glide/gifencoder/LZWEncoder/nextPixel()I
istore 7
iload 7
iconst_m1
if_icmpeq L3
iload 7
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/maxbits I
ishl
iload 1
iadd
istore 9
iload 7
bipush 8
iload 4
isub
ishl
iload 1
ixor
istore 3
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/htab [I
iload 3
iaload
iload 9
if_icmpne L4
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/codetab [I
iload 3
iaload
istore 1
goto L2
L4:
iload 3
istore 5
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/htab [I
iload 3
iaload
iflt L5
iload 8
iload 3
isub
istore 5
iload 3
istore 6
iload 3
ifne L6
iconst_1
istore 5
iload 3
istore 6
L6:
iload 6
iload 5
isub
istore 6
iload 6
istore 3
iload 6
ifge L7
iload 6
iload 8
iadd
istore 3
L7:
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/htab [I
iload 3
iaload
iload 9
if_icmpne L8
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/codetab [I
iload 3
iaload
istore 1
goto L2
L8:
iload 3
istore 6
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/htab [I
iload 3
iaload
ifge L6
iload 3
istore 5
L5:
aload 0
iload 1
aload 2
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/output(ILjava/io/OutputStream;)V
iload 7
istore 1
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/free_ent I
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/maxmaxcode I
if_icmpge L9
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/codetab [I
astore 10
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/free_ent I
istore 3
aload 0
iload 3
iconst_1
iadd
putfield com/bumptech/glide/gifencoder/LZWEncoder/free_ent I
aload 10
iload 5
iload 3
iastore
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/htab [I
iload 5
iload 9
iastore
goto L2
L9:
aload 0
aload 2
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/cl_block(Ljava/io/OutputStream;)V
goto L2
L3:
aload 0
iload 1
aload 2
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/output(ILjava/io/OutputStream;)V
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/EOFCode I
aload 2
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/output(ILjava/io/OutputStream;)V
return
.limit locals 11
.limit stack 4
.end method

.method encode(Ljava/io/OutputStream;)V
.throws java/io/IOException
aload 1
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/initCodeSize I
invokevirtual java/io/OutputStream/write(I)V
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/imgW I
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/imgH I
imul
putfield com/bumptech/glide/gifencoder/LZWEncoder/remaining I
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/LZWEncoder/curPixel I
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/initCodeSize I
iconst_1
iadd
aload 1
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/compress(ILjava/io/OutputStream;)V
aload 1
iconst_0
invokevirtual java/io/OutputStream/write(I)V
return
.limit locals 2
.limit stack 3
.end method

.method flush_char(Ljava/io/OutputStream;)V
.throws java/io/IOException
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/a_count I
ifle L0
aload 1
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/a_count I
invokevirtual java/io/OutputStream/write(I)V
aload 1
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/accum [B
iconst_0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/a_count I
invokevirtual java/io/OutputStream/write([BII)V
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/LZWEncoder/a_count I
L0:
return
.limit locals 2
.limit stack 4
.end method

.method output(ILjava/io/OutputStream;)V
.throws java/io/IOException
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_accum I
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/masks [I
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_bits I
iaload
iand
putfield com/bumptech/glide/gifencoder/LZWEncoder/cur_accum I
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_bits I
ifle L0
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_accum I
iload 1
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_bits I
ishl
ior
putfield com/bumptech/glide/gifencoder/LZWEncoder/cur_accum I
L1:
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_bits I
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/n_bits I
iadd
putfield com/bumptech/glide/gifencoder/LZWEncoder/cur_bits I
L2:
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_bits I
bipush 8
if_icmplt L3
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_accum I
sipush 255
iand
i2b
aload 2
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/char_out(BLjava/io/OutputStream;)V
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_accum I
bipush 8
ishr
putfield com/bumptech/glide/gifencoder/LZWEncoder/cur_accum I
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_bits I
bipush 8
isub
putfield com/bumptech/glide/gifencoder/LZWEncoder/cur_bits I
goto L2
L0:
aload 0
iload 1
putfield com/bumptech/glide/gifencoder/LZWEncoder/cur_accum I
goto L1
L3:
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/free_ent I
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/maxcode I
if_icmpgt L4
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/clear_flg Z
ifeq L5
L4:
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/clear_flg Z
ifeq L6
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/g_init_bits I
istore 3
aload 0
iload 3
putfield com/bumptech/glide/gifencoder/LZWEncoder/n_bits I
aload 0
aload 0
iload 3
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/MAXCODE(I)I
putfield com/bumptech/glide/gifencoder/LZWEncoder/maxcode I
aload 0
iconst_0
putfield com/bumptech/glide/gifencoder/LZWEncoder/clear_flg Z
L5:
iload 1
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/EOFCode I
if_icmpne L7
L8:
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_bits I
ifle L9
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_accum I
sipush 255
iand
i2b
aload 2
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/char_out(BLjava/io/OutputStream;)V
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_accum I
bipush 8
ishr
putfield com/bumptech/glide/gifencoder/LZWEncoder/cur_accum I
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/cur_bits I
bipush 8
isub
putfield com/bumptech/glide/gifencoder/LZWEncoder/cur_bits I
goto L8
L6:
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/n_bits I
iconst_1
iadd
putfield com/bumptech/glide/gifencoder/LZWEncoder/n_bits I
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/n_bits I
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/maxbits I
if_icmpne L10
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/maxmaxcode I
putfield com/bumptech/glide/gifencoder/LZWEncoder/maxcode I
goto L5
L10:
aload 0
aload 0
aload 0
getfield com/bumptech/glide/gifencoder/LZWEncoder/n_bits I
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/MAXCODE(I)I
putfield com/bumptech/glide/gifencoder/LZWEncoder/maxcode I
goto L5
L9:
aload 0
aload 2
invokevirtual com/bumptech/glide/gifencoder/LZWEncoder/flush_char(Ljava/io/OutputStream;)V
L7:
return
.limit locals 4
.limit stack 4
.end method
