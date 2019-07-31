.bytecode 50.0
.class synchronized synthetic com/nd/android/u/cloud/view/widge/LoginTabTitle$2
.super java/lang/Object
.enclosing method com/nd/android/u/cloud/view/widge/LoginTabTitle
.inner class static synthetic inner com/nd/android/u/cloud/view/widge/LoginTabTitle$2

.field static final synthetic '$SwitchMap$com$product$android$business$ApplicationVariable$LoginType' [I

.method static <clinit>()V
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
invokestatic com/product/android/business/ApplicationVariable$LoginType/values()[Lcom/product/android/business/ApplicationVariable$LoginType;
arraylength
newarray int
putstatic com/nd/android/u/cloud/view/widge/LoginTabTitle$2/$SwitchMap$com$product$android$business$ApplicationVariable$LoginType [I
L0:
getstatic com/nd/android/u/cloud/view/widge/LoginTabTitle$2/$SwitchMap$com$product$android$business$ApplicationVariable$LoginType [I
getstatic com/product/android/business/ApplicationVariable$LoginType/_JOB_NUMBER_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
invokevirtual com/product/android/business/ApplicationVariable$LoginType/ordinal()I
iconst_1
iastore
L1:
getstatic com/nd/android/u/cloud/view/widge/LoginTabTitle$2/$SwitchMap$com$product$android$business$ApplicationVariable$LoginType [I
getstatic com/product/android/business/ApplicationVariable$LoginType/_99_ACCOUNT_LOGIN Lcom/product/android/business/ApplicationVariable$LoginType;
invokevirtual com/product/android/business/ApplicationVariable$LoginType/ordinal()I
iconst_2
iastore
L3:
return
L4:
astore 0
return
L2:
astore 0
goto L1
.limit locals 1
.limit stack 3
.end method
