.bytecode 50.0
.class synchronized android/support/v4/widget/CursorFilter
.super android/widget/Filter
.inner class static abstract interface CursorFilterClient inner android/support/v4/widget/CursorFilter$CursorFilterClient outer android/support/v4/widget/CursorFilter

.field 'mClient' Landroid/support/v4/widget/CursorFilter$CursorFilterClient;

.method <init>(Landroid/support/v4/widget/CursorFilter$CursorFilterClient;)V
aload 0
invokespecial android/widget/Filter/<init>()V
aload 0
aload 1
putfield android/support/v4/widget/CursorFilter/mClient Landroid/support/v4/widget/CursorFilter$CursorFilterClient;
return
.limit locals 2
.limit stack 2
.end method

.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
aload 0
getfield android/support/v4/widget/CursorFilter/mClient Landroid/support/v4/widget/CursorFilter$CursorFilterClient;
aload 1
checkcast android/database/Cursor
invokeinterface android/support/v4/widget/CursorFilter$CursorFilterClient/convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence; 1
areturn
.limit locals 2
.limit stack 2
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
aload 0
getfield android/support/v4/widget/CursorFilter/mClient Landroid/support/v4/widget/CursorFilter$CursorFilterClient;
aload 1
invokeinterface android/support/v4/widget/CursorFilter$CursorFilterClient/runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor; 1
astore 1
new android/widget/Filter$FilterResults
dup
invokespecial android/widget/Filter$FilterResults/<init>()V
astore 2
aload 1
ifnull L0
aload 2
aload 1
invokeinterface android/database/Cursor/getCount()I 0
putfield android/widget/Filter$FilterResults/count I
aload 2
aload 1
putfield android/widget/Filter$FilterResults/values Ljava/lang/Object;
aload 2
areturn
L0:
aload 2
iconst_0
putfield android/widget/Filter$FilterResults/count I
aload 2
aconst_null
putfield android/widget/Filter$FilterResults/values Ljava/lang/Object;
aload 2
areturn
.limit locals 3
.limit stack 2
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
aload 0
getfield android/support/v4/widget/CursorFilter/mClient Landroid/support/v4/widget/CursorFilter$CursorFilterClient;
invokeinterface android/support/v4/widget/CursorFilter$CursorFilterClient/getCursor()Landroid/database/Cursor; 0
astore 1
aload 2
getfield android/widget/Filter$FilterResults/values Ljava/lang/Object;
ifnull L0
aload 2
getfield android/widget/Filter$FilterResults/values Ljava/lang/Object;
aload 1
if_acmpeq L0
aload 0
getfield android/support/v4/widget/CursorFilter/mClient Landroid/support/v4/widget/CursorFilter$CursorFilterClient;
aload 2
getfield android/widget/Filter$FilterResults/values Ljava/lang/Object;
checkcast android/database/Cursor
invokeinterface android/support/v4/widget/CursorFilter$CursorFilterClient/changeCursor(Landroid/database/Cursor;)V 1
L0:
return
.limit locals 3
.limit stack 2
.end method
