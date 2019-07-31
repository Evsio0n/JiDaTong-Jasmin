.bytecode 50.0
.class synchronized synthetic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1
.super java/lang/Object
.enclosing method com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy
.inner class static synthetic inner com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1

.field static final synthetic '$SwitchMap$android$graphics$Bitmap$Config' [I

.method static <clinit>()V
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
invokestatic android/graphics/Bitmap$Config/values()[Landroid/graphics/Bitmap$Config;
arraylength
newarray int
putstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1/$SwitchMap$android$graphics$Bitmap$Config [I
L0:
getstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1/$SwitchMap$android$graphics$Bitmap$Config [I
getstatic android/graphics/Bitmap$Config/ARGB_8888 Landroid/graphics/Bitmap$Config;
invokevirtual android/graphics/Bitmap$Config/ordinal()I
iconst_1
iastore
L1:
getstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1/$SwitchMap$android$graphics$Bitmap$Config [I
getstatic android/graphics/Bitmap$Config/RGB_565 Landroid/graphics/Bitmap$Config;
invokevirtual android/graphics/Bitmap$Config/ordinal()I
iconst_2
iastore
L3:
getstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1/$SwitchMap$android$graphics$Bitmap$Config [I
getstatic android/graphics/Bitmap$Config/ARGB_4444 Landroid/graphics/Bitmap$Config;
invokevirtual android/graphics/Bitmap$Config/ordinal()I
iconst_3
iastore
L5:
getstatic com/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$1/$SwitchMap$android$graphics$Bitmap$Config [I
getstatic android/graphics/Bitmap$Config/ALPHA_8 Landroid/graphics/Bitmap$Config;
invokevirtual android/graphics/Bitmap$Config/ordinal()I
iconst_4
iastore
L7:
return
L8:
astore 0
return
L6:
astore 0
goto L5
L4:
astore 0
goto L3
L2:
astore 0
goto L1
.limit locals 1
.limit stack 3
.end method
