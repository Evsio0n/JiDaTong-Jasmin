.bytecode 50.0
.class public synchronized com/nd/android/u/contact/fragment/ContactFragment
.super com/nd/android/u/contact/fragment/ContactBaseFragment
.annotation invisible Landroid/annotation/SuppressLint;
value [s = "ValidFragment" 
.end annotation

.field protected static final 'TAG' Ljava/lang/String; = "ContactFragment"

.field private 'resetInitUnit' Z

.method public <init>()V
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactBaseFragment/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/ContactFragment/resetInitUnit Z
return
.limit locals 1
.limit stack 2
.end method

.method public <init>(I)V
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactBaseFragment/<init>()V
aload 0
iconst_0
putfield com/nd/android/u/contact/fragment/ContactFragment/resetInitUnit Z
aload 0
iload 1
putfield com/nd/android/u/contact/fragment/ContactFragment/mSelectModule I
return
.limit locals 2
.limit stack 2
.end method

.method public handler_CMD_39()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/resetInitUnit Z
ifeq L0
return
L0:
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/refreshNode Lcom/nd/android/u/contact/dataStructure/Node;
ifnull L1
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/mCache Ljava/util/Map;
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/refreshNode Lcom/nd/android/u/contact/dataStructure/Node;
invokeinterface java/util/Map/get(Ljava/lang/Object;)Ljava/lang/Object; 1
checkcast com/nd/android/u/contact/dataStructure/TreeNode
astore 1
aload 1
ifnull L1
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/reSetCountOnLineUser()V
aload 1
invokevirtual com/nd/android/u/contact/dataStructure/TreeNode/getCountOnLineUser()I
ifeq L1
invokestatic com/nd/android/u/contact/business/TreeNodePro/getInstance()Lcom/nd/android/u/contact/business/TreeNodePro;
aload 1
invokevirtual com/nd/android/u/contact/business/TreeNodePro/sortChildTreeNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;)V
invokestatic com/nd/android/u/contact/business/TreeNodePro/getInstance()Lcom/nd/android/u/contact/business/TreeNodePro;
aload 1
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/nodeList Ljava/util/List;
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/mCache Ljava/util/Map;
invokevirtual com/nd/android/u/contact/business/TreeNodePro/resetLoaderNode(Lcom/nd/android/u/contact/dataStructure/TreeNode;Ljava/util/List;Ljava/util/Map;)V
L1:
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/nodeList Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/refresh(Ljava/util/List;)V
return
.limit locals 2
.limit stack 4
.end method

.method public handler_CMD_MyStatus()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactFragment/showPromptLayout()V
return
.limit locals 1
.limit stack 1
.end method

.method public init()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/isInited Z
ifne L0
ldc "TIMECOST"
new java/lang/StringBuilder
dup
invokespecial java/lang/StringBuilder/<init>()V
ldc "IM \u573a\u666f7\uff1a\u9996\u6b21\u767b\u5f55\uff0c\u7ec4\u7ec7\u6570\u636e\u52a0\u8f7d\uff08\u4e0eqq\u76f8\u5f53\u7684\u7ec4\u7ec7\u6570\u7528\u6237\u91cf\u7ea7\uff09-Time:"
invokevirtual java/lang/StringBuilder/append(Ljava/lang/String;)Ljava/lang/StringBuilder;
getstatic com/product/android/business/LogData/IM7 J
invokevirtual java/lang/StringBuilder/append(J)Ljava/lang/StringBuilder;
invokevirtual java/lang/StringBuilder/toString()Ljava/lang/String;
invokestatic android/util/Log/d(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactFragment/initComponentValue()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/nodeList Ljava/util/List;
ifnull L1
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/nodeList Ljava/util/List;
invokeinterface java/util/List/size()I 0
ifne L2
L1:
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainUnitContact()I
iconst_1
if_icmpeq L2
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainUnitContact()I
iconst_3
if_icmpeq L2
aload 0
iconst_0
invokevirtual com/nd/android/u/contact/fragment/ContactFragment/initNodes(Z)V
L2:
invokestatic com/product/android/business/bean/SysParam/getInstance()Lcom/product/android/business/bean/SysParam;
invokevirtual com/product/android/business/bean/SysParam/getObtainUnitContact()I
iconst_1
if_icmpne L3
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/nodeList Ljava/util/List;
ifnonnull L3
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactFragment/notifyFinish()V
L3:
aload 0
iconst_1
putfield com/nd/android/u/contact/fragment/ContactFragment/isInited Z
L0:
return
.limit locals 1
.limit stack 4
.end method

.method public notifyError()V
ldc "DYF"
ldc "ContactFragment notifyError"
invokestatic android/util/Log/e(Ljava/lang/String;Ljava/lang/String;)I
pop
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
return
.limit locals 1
.limit stack 2
.end method

.method public notifyFinish()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
ifnull L1
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactFragment/refreshTree()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/mCache Ljava/util/Map;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setmCache(Ljava/util/Map;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/nodeList Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setNodeList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
return
L1:
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactFragment/initComponentValue()V
return
.limit locals 1
.limit stack 2
.end method

.method public onDestroy()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/m_dialog Landroid/app/ProgressDialog;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/m_dialog Landroid/app/ProgressDialog;
invokevirtual android/app/ProgressDialog/dismiss()V
L0:
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/mGetChildTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L1
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/mGetChildTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L1
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/mGetChildTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L1:
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/mRefreshUnitTreeTask Lcom/common/android/utils/task/genericTask/GenericTask;
ifnull L2
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/mRefreshUnitTreeTask Lcom/common/android/utils/task/genericTask/GenericTask;
invokevirtual com/common/android/utils/task/genericTask/GenericTask/getStatus()Landroid/os/AsyncTask$Status;
getstatic android/os/AsyncTask$Status/RUNNING Landroid/os/AsyncTask$Status;
if_acmpne L2
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/mRefreshUnitTreeTask Lcom/common/android/utils/task/genericTask/GenericTask;
iconst_1
invokevirtual com/common/android/utils/task/genericTask/GenericTask/cancel(Z)Z
pop
L2:
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactBaseFragment/onDestroy()V
return
.limit locals 1
.limit stack 2
.end method

.method public onResume()V
aload 0
invokespecial com/nd/android/u/contact/fragment/ContactBaseFragment/onResume()V
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactFragment/init()V
return
.limit locals 1
.limit stack 1
.end method

.method public refresh()V
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
ifnull L0
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/nodeList Ljava/util/List;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/setNodeList(Ljava/util/List;)V
aload 0
getfield com/nd/android/u/contact/fragment/ContactFragment/treeAdapter Lcom/nd/android/u/contact/adapter/TreeAdapter;
invokevirtual com/nd/android/u/contact/adapter/TreeAdapter/notifyDataSetChanged()V
L0:
aload 0
invokevirtual com/nd/android/u/contact/fragment/ContactFragment/showPromptLayout()V
return
.limit locals 1
.limit stack 2
.end method
