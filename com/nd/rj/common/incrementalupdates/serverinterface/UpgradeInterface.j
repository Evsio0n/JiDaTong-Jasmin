.bytecode 50.0
.class public abstract interface com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface
.super java/lang/Object
.inner class public static final enum CheckVersionResult inner com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult outer com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface
.inner class public static DownloadFileResult inner com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult outer com/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface

.method public abstract checkVersion(Lcom/nd/rj/common/incrementalupdates/serverinterface/CheckUpgradeParam;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$CheckVersionResult;
.end method

.method public abstract downloadUpgradeFile(Ljava/lang/String;Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;Lde/greenrobot/event/EventBus;)Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInterface$DownloadFileResult;
.end method

.method public abstract getUpgradeInfo()Lcom/nd/rj/common/incrementalupdates/serverinterface/UpgradeInfo;
.end method
