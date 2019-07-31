.bytecode 50.0
.class public synchronized com/nd/rj/common/incrementalupdates/ResourceUtil
.super java/lang/Object

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static getAnimId(Landroid/content/Context;Ljava/lang/String;)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
ldc "anim"
aload 0
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getPackageName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static getColorId(Landroid/content/Context;Ljava/lang/String;)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
ldc "color"
aload 0
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getPackageName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static getDimenId(Landroid/content/Context;Ljava/lang/String;)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
ldc "dimen"
aload 0
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getPackageName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
ldc "drawable"
aload 0
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getPackageName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
ldc "id"
aload 0
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getPackageName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
ldc "layout"
aload 0
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getPackageName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
getstatic com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName/INSTANCE Lcom/nd/rj/common/incrementalupdates/utils/IncrementalPackageName;
invokevirtual com/nd/rj/common/incrementalupdates/utils/IncrementalPackageName/getPackageName()Ljava/lang/String;
astore 2
aload 2
astore 1
aload 2
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifeq L0
aload 0
invokevirtual android/content/Context/getPackageName()Ljava/lang/String;
astore 1
L0:
aload 1
areturn
.limit locals 3
.limit stack 1
.end method

.method public static final getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I
.catch java/lang/Throwable from L0 to L1 using L2
.catch java/lang/Throwable from L3 to L4 using L2
L0:
new java/lang/StringBuilder
dup
aload 0
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getPackageName(Landroid/content/Context;)Ljava/lang/String;
invokestatic java/lang/String/valueOf(Ljava/lang/Object;)Ljava/lang/String;
invokespecial java/lang/StringBuilder/<init>(Ljava/lang/String;)V
ldc ".R$styleable"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic java/lang/Class/forName(Ljava/lang/String;)Ljava/lang/Class;
invokevirtual java/lang/Class/getFields()[Ljava/lang/reflect/Field;
astore 0
aload 0
arraylength
istore 3
L1:
iconst_0
istore 2
L5:
iload 2
iload 3
if_icmplt L6
iconst_0
newarray int
areturn
L6:
aload 0
iload 2
aaload
astore 4
L3:
aload 4
invokevirtual java/lang/reflect/Field/getName()Ljava/lang/String;
aload 1
invokevirtual java/lang/String/equals(Ljava/lang/Object;)Z
ifeq L7
aload 4
aconst_null
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
checkcast [I
astore 0
L4:
aload 0
areturn
L7:
iload 2
iconst_1
iadd
istore 2
goto L5
L2:
astore 0
iconst_0
newarray int
areturn
.limit locals 5
.limit stack 3
.end method

.method public static getStringId(Landroid/content/Context;Ljava/lang/String;)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
ldc "string"
aload 0
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getPackageName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 4
.end method

.method public static getStyleId(Landroid/content/Context;Ljava/lang/String;)I
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
aload 1
ldc "styleable"
aload 0
invokestatic com/nd/rj/common/incrementalupdates/ResourceUtil/getPackageName(Landroid/content/Context;)Ljava/lang/String;
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
ireturn
.limit locals 2
.limit stack 4
.end method
