.bytecode 50.0
.class public synchronized com/nd/android/u/contact/dataStructure/VirtualNode
.super java/lang/Object

.field public static final 'IS_READING' I = 4


.field public static final 'MY_CLASS' I = 0


.field public static final 'MY_CLASSMATE' I = 5


.field public static final 'PARENT' I = 3


.field public static final 'STUDENT' I = 1


.field public static final 'TEACHER' I = 2


.field private 'classid' I

.field private 'virtualId' I

.method public <init>()V
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 1
.limit stack 1
.end method

.method public getClassid()I
aload 0
getfield com/nd/android/u/contact/dataStructure/VirtualNode/classid I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public getName()Ljava/lang/String;
aload 0
getfield com/nd/android/u/contact/dataStructure/VirtualNode/virtualId I
tableswitch 0
L0
L1
L2
L3
L4
L5
default : L6
L6:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/unknow I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L0:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/my_class I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L1:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/student I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L2:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/teacher I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L3:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/parent I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L4:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/is_reading I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
L5:
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
getfield com/product/android/business/ApplicationVariable/applicationContext Landroid/content/Context;
getstatic com/nd/android/u/contact/R$string/my_classmate I
invokevirtual android/content/Context/getString(I)Ljava/lang/String;
areturn
.limit locals 1
.limit stack 2
.end method

.method public getVirtualId()I
aload 0
getfield com/nd/android/u/contact/dataStructure/VirtualNode/virtualId I
ireturn
.limit locals 1
.limit stack 1
.end method

.method public setClassid(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/VirtualNode/classid I
return
.limit locals 2
.limit stack 2
.end method

.method public setVirtualId(I)V
aload 0
iload 1
putfield com/nd/android/u/contact/dataStructure/VirtualNode/virtualId I
return
.limit locals 2
.limit stack 2
.end method
