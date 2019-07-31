.bytecode 50.0
.class synchronized synthetic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$4
.super java/lang/Object
.enclosing method com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.inner class static synthetic inner com/common/android/utils/concurrent/NdTinyHttpAsyncTask$4

.field static final synthetic '$SwitchMap$com$common$android$utils$concurrent$NdTinyHttpAsyncTask$Status' [I

.method static <clinit>()V
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
invokestatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/values()[Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
arraylength
newarray int
putstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$4/$SwitchMap$com$common$android$utils$concurrent$NdTinyHttpAsyncTask$Status [I
L0:
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$4/$SwitchMap$com$common$android$utils$concurrent$NdTinyHttpAsyncTask$Status [I
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/RUNNING Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/ordinal()I
iconst_1
iastore
L1:
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$4/$SwitchMap$com$common$android$utils$concurrent$NdTinyHttpAsyncTask$Status [I
getstatic com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/FINISHED Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status;
invokevirtual com/common/android/utils/concurrent/NdTinyHttpAsyncTask$Status/ordinal()I
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
