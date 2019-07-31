.bytecode 50.0
.class synchronized synthetic com/common/android/utils/concurrent/NdCacheAsyncTask$4
.super java/lang/Object
.enclosing method com/common/android/utils/concurrent/NdCacheAsyncTask
.inner class static synthetic inner com/common/android/utils/concurrent/NdCacheAsyncTask$4

.field static final synthetic '$SwitchMap$com$common$android$utils$concurrent$NdCacheAsyncTask$Status' [I

.method static <clinit>()V
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
invokestatic com/common/android/utils/concurrent/NdCacheAsyncTask$Status/values()[Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
arraylength
newarray int
putstatic com/common/android/utils/concurrent/NdCacheAsyncTask$4/$SwitchMap$com$common$android$utils$concurrent$NdCacheAsyncTask$Status [I
L0:
getstatic com/common/android/utils/concurrent/NdCacheAsyncTask$4/$SwitchMap$com$common$android$utils$concurrent$NdCacheAsyncTask$Status [I
getstatic com/common/android/utils/concurrent/NdCacheAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
invokevirtual com/common/android/utils/concurrent/NdCacheAsyncTask$Status/ordinal()I
iconst_1
iastore
L1:
getstatic com/common/android/utils/concurrent/NdCacheAsyncTask$4/$SwitchMap$com$common$android$utils$concurrent$NdCacheAsyncTask$Status [I
getstatic com/common/android/utils/concurrent/NdCacheAsyncTask$Status/FINISHED Lcom/common/android/utils/concurrent/NdCacheAsyncTask$Status;
invokevirtual com/common/android/utils/concurrent/NdCacheAsyncTask$Status/ordinal()I
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
