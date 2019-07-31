.bytecode 50.0
.class public synchronized com/nd/android/u/cloud/ui/dialog/NoteRecordDialog
.super android/app/AlertDialog$Builder
.inner class inner com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1
.inner class inner com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$2

.field private 'cm' Landroid/text/ClipboardManager;

.field private 'context' Landroid/content/Context;

.field protected 'handler' Landroid/os/Handler;

.field protected 'items' [Ljava/lang/CharSequence;

.field protected 'messageinfo' Lcom/nd/android/u/contact/dataStructure/MessageInfo;

.method public <init>(Landroid/content/Context;)V
aload 0
aload 1
invokespecial android/app/AlertDialog$Builder/<init>(Landroid/content/Context;)V
aload 0
invokestatic com/nd/android/u/cloud/OapApplication/getInstance()Lcom/nd/android/u/cloud/OapApplication;
invokevirtual com/nd/android/u/cloud/OapApplication/getResources()Landroid/content/res/Resources;
ldc_w 2131558440
invokevirtual android/content/res/Resources/getStringArray(I)[Ljava/lang/String;
putfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/items [Ljava/lang/CharSequence;
aload 0
invokevirtual com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/registEvent()V
return
.limit locals 2
.limit stack 3
.end method

.method public <init>(Landroid/content/Context;Lcom/nd/android/u/contact/dataStructure/MessageInfo;Landroid/os/Handler;)V
aload 0
aload 1
invokespecial com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/<init>(Landroid/content/Context;)V
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/context Landroid/content/Context;
aload 0
aload 2
putfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/messageinfo Lcom/nd/android/u/contact/dataStructure/MessageInfo;
aload 0
aload 3
putfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/handler Landroid/os/Handler;
aload 0
invokevirtual com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/registEvent()V
return
.limit locals 4
.limit stack 2
.end method

.method static synthetic access$000(Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;)Landroid/text/ClipboardManager;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/cm Landroid/text/ClipboardManager;
areturn
.limit locals 1
.limit stack 1
.end method

.method static synthetic access$002(Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;Landroid/text/ClipboardManager;)Landroid/text/ClipboardManager;
aload 0
aload 1
putfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/cm Landroid/text/ClipboardManager;
aload 1
areturn
.limit locals 2
.limit stack 2
.end method

.method static synthetic access$100(Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;)Landroid/content/Context;
aload 0
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/context Landroid/content/Context;
areturn
.limit locals 1
.limit stack 1
.end method

.method public registEvent()V
aload 0
aload 0
getfield com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/items [Ljava/lang/CharSequence;
new com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$1/<init>(Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
aload 0
ldc_w 2131492869
new com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$2
dup
aload 0
invokespecial com/nd/android/u/cloud/ui/dialog/NoteRecordDialog$2/<init>(Lcom/nd/android/u/cloud/ui/dialog/NoteRecordDialog;)V
invokevirtual com/nd/android/u/cloud/ui/dialog/NoteRecordDialog/setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
pop
return
.limit locals 1
.limit stack 5
.end method
