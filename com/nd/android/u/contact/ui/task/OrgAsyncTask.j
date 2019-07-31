.bytecode 50.0
.class public synchronized com/nd/android/u/contact/ui/task/OrgAsyncTask
.super com/nd/android/u/contact/ui/base/ContactCacheAsyncTask
.inner class public static final enum CALLBACK_TYPE inner com/nd/android/u/contact/ui/task/OrgAsyncTask$CALLBACK_TYPE outer com/nd/android/u/contact/ui/task/OrgAsyncTask

.field private 'mCallBack' Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack;

.field private 'mDoBackground' Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBackgrounp;

.method public <init>(Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBackgrounp;Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack;)V
aload 0
invokespecial com/nd/android/u/contact/ui/base/ContactCacheAsyncTask/<init>()V
aload 0
aload 1
putfield com/nd/android/u/contact/ui/task/OrgAsyncTask/mDoBackground Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBackgrounp;
aload 0
aload 2
putfield com/nd/android/u/contact/ui/task/OrgAsyncTask/mCallBack Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack;
return
.limit locals 3
.limit stack 2
.end method

.method protected transient doInBackground([Ljava/lang/Void;)Lcom/nd/android/u/contact/ui/bean/CallBackResult;
aload 0
getfield com/nd/android/u/contact/ui/task/OrgAsyncTask/mDoBackground Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBackgrounp;
ifnull L0
aload 0
getfield com/nd/android/u/contact/ui/task/OrgAsyncTask/mDoBackground Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBackgrounp;
invokeinterface com/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBackgrounp/doBackgrounp()Lcom/nd/android/u/contact/ui/bean/CallBackResult; 0
areturn
L0:
aconst_null
areturn
.limit locals 2
.limit stack 1
.end method

.method protected volatile synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
aload 0
aload 1
checkcast [Ljava/lang/Void;
invokevirtual com/nd/android/u/contact/ui/task/OrgAsyncTask/doInBackground([Ljava/lang/Void;)Lcom/nd/android/u/contact/ui/bean/CallBackResult;
areturn
.limit locals 2
.limit stack 2
.end method

.method protected onPostExecute(Lcom/nd/android/u/contact/ui/bean/CallBackResult;)V
aload 0
aload 1
invokespecial com/nd/android/u/contact/ui/base/ContactCacheAsyncTask/onPostExecute(Ljava/lang/Object;)V
aload 0
getfield com/nd/android/u/contact/ui/task/OrgAsyncTask/mCallBack Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack;
ifnull L0
aload 1
ifnull L0
aload 0
getfield com/nd/android/u/contact/ui/task/OrgAsyncTask/mCallBack Lcom/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack;
aload 1
invokeinterface com/nd/android/u/contact/ui/base/ContactCacheAsyncTask$CallBack/afterDone(Lcom/nd/android/u/contact/ui/bean/CallBackResult;)V 1
L0:
return
.limit locals 2
.limit stack 2
.end method

.method protected volatile synthetic onPostExecute(Ljava/lang/Object;)V
aload 0
aload 1
checkcast com/nd/android/u/contact/ui/bean/CallBackResult
invokevirtual com/nd/android/u/contact/ui/task/OrgAsyncTask/onPostExecute(Lcom/nd/android/u/contact/ui/bean/CallBackResult;)V
return
.limit locals 2
.limit stack 2
.end method
