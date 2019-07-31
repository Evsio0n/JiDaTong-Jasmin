.bytecode 50.0
.class final synchronized com/flurry/android/s
.super android/widget/LinearLayout

.method public <init>(Lcom/flurry/android/CatalogActivity;Landroid/content/Context;)V
aload 0
aload 2
invokespecial android/widget/LinearLayout/<init>(Landroid/content/Context;)V
aload 0
iconst_m1
invokevirtual com/flurry/android/s/setBackgroundColor(I)V
aload 1
invokestatic com/flurry/android/CatalogActivity/c(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/v;
invokevirtual com/flurry/android/v/l()Lcom/flurry/android/AdImage;
astore 3
aload 3
ifnull L0
new android/widget/ImageView
dup
aload 2
invokespecial android/widget/ImageView/<init>(Landroid/content/Context;)V
astore 1
aload 1
sipush 10000
invokevirtual android/widget/ImageView/setId(I)V
aload 3
getfield com/flurry/android/AdImage/e [B
astore 4
aload 4
ifnull L1
aload 1
aload 4
iconst_0
aload 4
arraylength
invokestatic android/graphics/BitmapFactory/decodeByteArray([BII)Landroid/graphics/Bitmap;
invokevirtual android/widget/ImageView/setImageBitmap(Landroid/graphics/Bitmap;)V
L1:
aload 2
aload 1
aload 2
aload 3
getfield com/flurry/android/AdImage/b I
invokestatic com/flurry/android/r/a(Landroid/content/Context;I)I
aload 2
aload 3
getfield com/flurry/android/AdImage/c I
invokestatic com/flurry/android/r/a(Landroid/content/Context;I)I
invokestatic com/flurry/android/r/a(Landroid/content/Context;Landroid/widget/ImageView;II)V
new android/widget/LinearLayout$LayoutParams
dup
bipush -2
bipush -2
invokespecial android/widget/LinearLayout$LayoutParams/<init>(II)V
astore 2
aload 2
iconst_0
iconst_0
iconst_0
bipush -3
invokevirtual android/widget/LinearLayout$LayoutParams/setMargins(IIII)V
aload 0
iconst_3
invokevirtual com/flurry/android/s/setGravity(I)V
aload 0
aload 1
aload 2
invokevirtual com/flurry/android/s/addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
L0:
return
.limit locals 5
.limit stack 5
.end method
