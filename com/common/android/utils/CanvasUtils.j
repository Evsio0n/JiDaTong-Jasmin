.bytecode 50.0
.class public synchronized com/common/android/utils/CanvasUtils
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static calculateTextBound(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Point;
aload 0
ifnull L0
aload 1
ifnonnull L1
L0:
aconst_null
areturn
L1:
new android/graphics/Rect
dup
invokespecial android/graphics/Rect/<init>()V
astore 3
aload 1
aload 0
iconst_0
aload 0
invokevirtual java/lang/String/length()I
aload 3
invokevirtual android/graphics/Paint/getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
aload 3
invokevirtual android/graphics/Rect/height()I
istore 2
new android/graphics/Point
dup
aload 1
aload 0
invokevirtual android/graphics/Paint/measureText(Ljava/lang/String;)F
f2i
iload 2
invokespecial android/graphics/Point/<init>(II)V
areturn
.limit locals 4
.limit stack 5
.end method
