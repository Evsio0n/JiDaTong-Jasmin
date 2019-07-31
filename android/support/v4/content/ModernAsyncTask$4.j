.bytecode 50.0
.class synchronized synthetic android/support/v4/content/ModernAsyncTask$4
.super java/lang/Object
.enclosing method android/support/v4/content/ModernAsyncTask
.inner class static synthetic inner android/support/v4/content/ModernAsyncTask$4

.field static final synthetic '$SwitchMap$android$support$v4$content$ModernAsyncTask$Status' [I

.method static <clinit>()V
.catch java/lang/NoSuchFieldError from L0 to L1 using L2
.catch java/lang/NoSuchFieldError from L1 to L3 using L4
invokestatic android/support/v4/content/ModernAsyncTask$Status/values()[Landroid/support/v4/content/ModernAsyncTask$Status;
arraylength
newarray int
putstatic android/support/v4/content/ModernAsyncTask$4/$SwitchMap$android$support$v4$content$ModernAsyncTask$Status [I
L0:
getstatic android/support/v4/content/ModernAsyncTask$4/$SwitchMap$android$support$v4$content$ModernAsyncTask$Status [I
getstatic android/support/v4/content/ModernAsyncTask$Status/RUNNING Landroid/support/v4/content/ModernAsyncTask$Status;
invokevirtual android/support/v4/content/ModernAsyncTask$Status/ordinal()I
iconst_1
iastore
L1:
getstatic android/support/v4/content/ModernAsyncTask$4/$SwitchMap$android$support$v4$content$ModernAsyncTask$Status [I
getstatic android/support/v4/content/ModernAsyncTask$Status/FINISHED Landroid/support/v4/content/ModernAsyncTask$Status;
invokevirtual android/support/v4/content/ModernAsyncTask$Status/ordinal()I
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
