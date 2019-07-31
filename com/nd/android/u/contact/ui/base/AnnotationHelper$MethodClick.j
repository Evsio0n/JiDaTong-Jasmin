.bytecode 50.0
.class public final synchronized enum com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick
.super java/lang/Enum
.signature "Ljava/lang/Enum<Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;>;"
.inner class public static final enum MethodClick inner com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick outer com/nd/android/u/contact/ui/base/AnnotationHelper

.field private static final synthetic '$VALUES' [Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;

.field public static final enum 'Click' Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;

.field public static final enum 'LongClick' Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;

.method static <clinit>()V
new com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick
dup
ldc "Click"
iconst_0
invokespecial com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick/Click Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;
new com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick
dup
ldc "LongClick"
iconst_1
invokespecial com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick/<init>(Ljava/lang/String;I)V
putstatic com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick/LongClick Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;
iconst_2
anewarray com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick
dup
iconst_0
getstatic com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick/Click Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;
aastore
dup
iconst_1
getstatic com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick/LongClick Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;
aastore
putstatic com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick/$VALUES [Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;
return
.limit locals 0
.limit stack 4
.end method

.method private <init>(Ljava/lang/String;I)V
.signature "()V"
aload 0
aload 1
iload 2
invokespecial java/lang/Enum/<init>(Ljava/lang/String;I)V
return
.limit locals 3
.limit stack 3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;
ldc com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick
aload 0
invokestatic java/lang/Enum/valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
checkcast com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick
areturn
.limit locals 1
.limit stack 2
.end method

.method public static values()[Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;
getstatic com/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick/$VALUES [Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;
invokevirtual [Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;/clone()Ljava/lang/Object;
checkcast [Lcom/nd/android/u/contact/ui/base/AnnotationHelper$MethodClick;
areturn
.limit locals 0
.limit stack 1
.end method
