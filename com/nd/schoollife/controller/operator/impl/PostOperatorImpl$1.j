.bytecode 50.0
.class synchronized synthetic com/nd/schoollife/controller/operator/impl/PostOperatorImpl$1
.super java/lang/Object
.enclosing method com/nd/schoollife/controller/operator/impl/PostOperatorImpl
.inner class static synthetic inner com/nd/schoollife/controller/operator/impl/PostOperatorImpl$1

.field static final synthetic '$SwitchMap$com$nd$android$forumsdk$business$constant$RequestConst$ScopeType' [I

.method static <clinit>()V
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
invokestatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/values()[Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
arraylength
newarray int
putstatic com/nd/schoollife/controller/operator/impl/PostOperatorImpl$1/$SwitchMap$com$nd$android$forumsdk$business$constant$RequestConst$ScopeType [I
L0:
getstatic com/nd/schoollife/controller/operator/impl/PostOperatorImpl$1/$SwitchMap$com$nd$android$forumsdk$business$constant$RequestConst$ScopeType [I
getstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/COMMUNITY Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
invokevirtual com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/ordinal()I
iconst_1
iastore
L1:
getstatic com/nd/schoollife/controller/operator/impl/PostOperatorImpl$1/$SwitchMap$com$nd$android$forumsdk$business$constant$RequestConst$ScopeType [I
getstatic com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/TEAM Lcom/nd/android/forumsdk/business/constant/RequestConst$ScopeType;
invokevirtual com/nd/android/forumsdk/business/constant/RequestConst$ScopeType/ordinal()I
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
