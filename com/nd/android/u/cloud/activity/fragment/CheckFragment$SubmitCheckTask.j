.bytecode 50.0
.class synchronized com/nd/android/u/cloud/activity/fragment/CheckFragment$SubmitCheckTask
.super com/common/android/utils/concurrent/NdTinyHttpAsyncTask
.signature "Lcom/common/android/utils/concurrent/NdTinyHttpAsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Boolean;>;"
.inner class private static SubmitCheckTask inner com/nd/android/u/cloud/activity/fragment/CheckFragment$SubmitCheckTask outer com/nd/android/u/cloud/activity/fragment/CheckFragment

.field private 'mActivity' Landroid/app/Activity;

.field private 'mPD' Landroid/app/ProgressDialog;

.method <init>(Landroid/app/Activity;)V
aload 0
invokespecial com/common/android/utils/concurrent/NdTinyHttpAsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/android/u/cloud/activity/fragment/CheckFragment$SubmitCheckTask/mActivity Landroid/app/Activity;
return
.limit locals 2
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
.catch com/nd/android/u/cloud/ComException from L0 to L1 using L2
aload 1
iconst_0
aaload
astore 2
aload 1
iconst_1
aaload
astore 3
aload 1
iconst_2
aaload
astore 1
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
astore 4
aload 4
ldc "\u59d3\u540d\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 2
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
ldc_w 65292
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
ldc "\u624b\u673a\u53f7\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 3
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
aload 1
invokestatic android/text/TextUtils/isEmpty(Ljava/lang/CharSequence;)Z
ifne L3
aload 4
ldc_w 65292
invokevirtual java/lang/StringBuilder/append(C)Ljava/lang/StringBuilder;
ldc "\u4e13\u4e1a\uff1a"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
aload 1
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L3:
aload 4
ldc "  \u6709\u65b0\u7684\u8d26\u53f7\u5ba1\u6838\u7533\u8bf7\uff0c\u8bf7\u53ca\u65f6\u5904\u7406"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
pop
L0:
new com/nd/android/u/cloud/com/OapAddOrgCom
dup
invokespecial com/nd/android/u/cloud/com/OapAddOrgCom/<init>()V
aload 4
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment$SubmitCheckTask/mActivity Landroid/app/Activity;
invokevirtual com/nd/android/u/cloud/com/OapAddOrgCom/applyService(Ljava/lang/String;Landroid/content/Context;)Z
ifeq L4
L1:
iconst_1
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
L2:
astore 1
L4:
iconst_0
invokestatic java/lang/Boolean/valueOf(Z)Ljava/lang/Boolean;
areturn
.limit locals 5
.limit stack 3
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/String;
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckFragment$SubmitCheckTask/doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment$SubmitCheckTask/mActivity Landroid/app/Activity;
invokevirtual android/app/Activity/isFinishing()Z
ifeq L0
return
L0:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment$SubmitCheckTask/mPD Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
aload 1
invokevirtual java/lang/Boolean/booleanValue()Z
ifeq L1
ldc_w 2131494004
istore 2
L2:
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment$SubmitCheckTask/mActivity Landroid/app/Activity;
iload 2
invokestatic com/common/android/utils/ToastUtils/display(Landroid/content/Context;I)V
return
L1:
ldc_w 2131494003
istore 2
goto L2
.limit locals 3
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast java/lang/Boolean
invokevirtual com/nd/android/u/cloud/activity/fragment/CheckFragment$SubmitCheckTask/onPostExecute(Ljava/lang/Boolean;)V
return
.limit locals 2
.limit stack 2
.end method

.method protected onPreExecute()V
aload 0
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment$SubmitCheckTask/mActivity Landroid/app/Activity;
aconst_null
aload 0
getfield com/nd/android/u/cloud/activity/fragment/CheckFragment$SubmitCheckTask/mActivity Landroid/app/Activity;
ldc_w 2131494002
invokevirtual android/app/Activity/getString(I)Ljava/lang/String;
iconst_1
iconst_0
invokestatic android/app/ProgressDialog/show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
putfield com/nd/android/u/cloud/activity/fragment/CheckFragment$SubmitCheckTask/mPD Landroid/app/ProgressDialog;
return
.limit locals 1
.limit stack 6
.end method
