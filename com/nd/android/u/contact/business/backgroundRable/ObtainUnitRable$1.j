.bytecode 50.0
.class synchronized com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable$1
.super java/lang/Object
.implements java/lang/Runnable
.enclosing method com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable/run()V
.inner class inner com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable$1

.field final synthetic 'this$0' Lcom/nd/android/u/contact/business/backgroundRable/ObtainUnitRable;

.method <init>(Lcom/nd/android/u/contact/business/backgroundRable/ObtainUnitRable;)V
aload 0
aload 1
putfield com/nd/android/u/contact/business/backgroundRable/ObtainUnitRable$1/this$0 Lcom/nd/android/u/contact/business/backgroundRable/ObtainUnitRable;
aload 0
invokespecial java/lang/Object/<init>()V
return
.limit locals 2
.limit stack 2
.end method

.method public run()V
getstatic com/product/android/business/ApplicationVariable/INSTANCE Lcom/product/android/business/ApplicationVariable;
invokevirtual com/product/android/business/ApplicationVariable/getCurrentUserInfo()Lcom/product/android/business/bean/UserInfo;
ifnull L0
invokestatic com/nd/android/u/contact/db/NDDatabase/getInstance()Lcom/nd/android/u/contact/db/NDDatabase;
iconst_0
invokevirtual com/nd/android/u/contact/db/NDDatabase/getDb(Z)Landroid/database/sqlite/SQLiteDatabase;
invokevirtual android/database/sqlite/SQLiteDatabase/isOpen()Z
ifeq L0
invokestatic com/nd/android/u/contact/business/IncreUpdateFaceAndShow/getInstance()Lcom/nd/android/u/contact/business/IncreUpdateFaceAndShow;
invokevirtual com/nd/android/u/contact/business/IncreUpdateFaceAndShow/increUpdateFaceAndWallTiem()V
L0:
return
.limit locals 1
.limit stack 2
.end method
