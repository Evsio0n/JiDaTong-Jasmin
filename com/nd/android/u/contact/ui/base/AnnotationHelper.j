.bytecode 50.0
.class public final synchronized com/nd/android/u/contact/ui/base/AnnotationHelper
.super java/lang/Object
.inner class static synthetic inner com/nd/android/u/contact/ui/base/AnnotationHelper$1
.inner class public static final enum MethodClick inner com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick outer com/nd/android/u/contact/ui/base/AnnotationHelper

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public static initIdEvent(Landroid/content/Context;Ljava/lang/Object;Landroid/view/View;)V
.catch java/lang/Exception from L0 to L1 using L2
.catch java/lang/Exception from L3 to L4 using L2
.catch java/lang/Exception from L5 to L6 using L2
aload 1
invokevirtual java/lang/Object/getClass()Ljava/lang/Class;
invokevirtual java/lang/Class/getDeclaredFields()[Ljava/lang/reflect/Field;
astore 5
aload 5
ifnull L7
aload 5
arraylength
ifle L7
aload 0
invokevirtual android/content/Context/getResources()Landroid/content/res/Resources;
astore 6
getstatic com/common/android/utils/AllComPkgNameUtils/INSTANCE Lcom/common/android/utils/AllComPkgNameUtils;
aload 0
invokevirtual com/common/android/utils/AllComPkgNameUtils/getPackageName(Landroid/content/Context;)Ljava/lang/String;
astore 0
aload 5
arraylength
istore 4
iconst_0
istore 3
L8:
iload 3
iload 4
if_icmpge L7
aload 5
iload 3
aaload
astore 7
L0:
aload 7
iconst_1
invokevirtual java/lang/reflect/Field/setAccessible(Z)V
aload 7
aload 1
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
ifnull L3
L1:
goto L9
L3:
aload 7
ldc com/nd/android/u/contact/ui/annotation/ViewInject
invokevirtual java/lang/reflect/Field/getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
checkcast com/nd/android/u/contact/ui/annotation/ViewInject
astore 8
L4:
aload 8
ifnull L9
L5:
aload 7
aload 1
aload 2
aload 6
aload 8
invokeinterface com/nd/android/u/contact/ui/annotation/ViewInject/id()Ljava/lang/String; 0
ldc "id"
aload 0
invokevirtual android/content/res/Resources/getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
invokevirtual android/view/View/findViewById(I)Landroid/view/View;
invokevirtual java/lang/reflect/Field/set(Ljava/lang/Object;Ljava/lang/Object;)V
aload 1
aload 7
aload 8
invokeinterface com/nd/android/u/contact/ui/annotation/ViewInject/click()Ljava/lang/String; 0
getstatic com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick/Click Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;
invokestatic com/nd/android/u/contact/ui/base/AnnotationHelper/setListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;)V
aload 1
aload 7
aload 8
invokeinterface com/nd/android/u/contact/ui/annotation/ViewInject/longClick()Ljava/lang/String; 0
getstatic com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick/LongClick Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;
invokestatic com/nd/android/u/contact/ui/base/AnnotationHelper/setListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;)V
L6:
goto L9
L2:
astore 7
aload 7
invokevirtual java/lang/Exception/printStackTrace()V
goto L9
L7:
return
L9:
iload 3
iconst_1
iadd
istore 3
goto L8
.limit locals 9
.limit stack 7
.end method

.method private static setListener(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;)V
.throws java/lang/Exception
aload 2
ifnull L0
aload 2
invokevirtual java/lang/String/trim()Ljava/lang/String;
invokevirtual java/lang/String/length()I
ifne L1
L0:
return
L1:
aload 1
aload 0
invokevirtual java/lang/reflect/Field/get(Ljava/lang/Object;)Ljava/lang/Object;
astore 1
getstatic com/nd/android/u/contact/ui/base/AnnotationHelper$1/$SwitchMap$com$nd$android$u$contact$ui$base$AnnotationHelper$MethodClick [I
aload 3
invokevirtual com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick/ordinal()I
iaload
tableswitch 1
L2
L3
default : L4
L4:
return
L2:
aload 1
instanceof android/view/View
ifeq L0
aload 1
checkcast android/view/View
new com/nd/android/u/contact/ui/base/EventListener
dup
aload 0
invokespecial com/nd/android/u/contact/ui/base/EventListener/<init>(Ljava/lang/Object;)V
aload 2
invokevirtual com/nd/android/u/contact/ui/base/EventListener/click(Ljava/lang/String;)Lcom/nd/android/u/contact/ui/base/EventListener;
invokevirtual android/view/View/setOnClickListener(Landroid/view/View$OnClickListener;)V
return
L3:
aload 1
instanceof android/view/View
ifeq L0
aload 1
checkcast android/view/View
new com/nd/android/u/contact/ui/base/EventListener
dup
aload 0
invokespecial com/nd/android/u/contact/ui/base/EventListener/<init>(Ljava/lang/Object;)V
aload 2
invokevirtual com/nd/android/u/contact/ui/base/EventListener/longClick(Ljava/lang/String;)Lcom/nd/android/u/contact/ui/base/EventListener;
invokevirtual android/view/View/setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
return
.limit locals 4
.limit stack 4
.end method
