.bytecode 50.0
.class synchronized synthetic com/bumptech/glide/GenericRequestBuilder$2
.super java/lang/Object
.enclosing method com/bumptech/glide/GenericRequestBuilder
.inner class static synthetic inner com/bumptech/glide/GenericRequestBuilder$2

.field static final synthetic '$SwitchMap$android$widget$ImageView$ScaleType' [I

.method static <clinit>()V
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
.catch java/lang/NoSuchFieldError from L3 to L5 using L6
.catch java/lang/NoSuchFieldError from L5 to L7 using L8
invokestatic android/widget/ImageView$ScaleType/values()[Landroid/widget/ImageView$ScaleType;
arraylength
newarray int
putstatic com/bumptech/glide/GenericRequestBuilder$2/$SwitchMap$android$widget$ImageView$ScaleType [I
L0:
getstatic com/bumptech/glide/GenericRequestBuilder$2/$SwitchMap$android$widget$ImageView$ScaleType [I
getstatic android/widget/ImageView$ScaleType/CENTER_CROP Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
iconst_1
iastore
L1:
getstatic com/bumptech/glide/GenericRequestBuilder$2/$SwitchMap$android$widget$ImageView$ScaleType [I
getstatic android/widget/ImageView$ScaleType/FIT_CENTER Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
iconst_2
iastore
L3:
getstatic com/bumptech/glide/GenericRequestBuilder$2/$SwitchMap$android$widget$ImageView$ScaleType [I
getstatic android/widget/ImageView$ScaleType/FIT_START Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
iconst_3
iastore
L5:
getstatic com/bumptech/glide/GenericRequestBuilder$2/$SwitchMap$android$widget$ImageView$ScaleType [I
getstatic android/widget/ImageView$ScaleType/FIT_END Landroid/widget/ImageView$ScaleType;
invokevirtual android/widget/ImageView$ScaleType/ordinal()I
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
