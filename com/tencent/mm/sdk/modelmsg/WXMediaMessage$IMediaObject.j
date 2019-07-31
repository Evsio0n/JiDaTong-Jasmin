.bytecode 50.0
.class public abstract interface com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject
.super java/lang/Object
.inner class public static abstract interface IMediaObject inner com/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject outer com/tencent/mm/sdk/modelmsg/WXMediaMessage

.field public static final 'TYPE_APPDATA' I = 7


.field public static final 'TYPE_EMOJI' I = 8


.field public static final 'TYPE_FILE' I = 6


.field public static final 'TYPE_IMAGE' I = 2


.field public static final 'TYPE_MUSIC' I = 3


.field public static final 'TYPE_PRODUCT' I = 10


.field public static final 'TYPE_TEXT' I = 1


.field public static final 'TYPE_UNKNOWN' I = 0


.field public static final 'TYPE_URL' I = 5


.field public static final 'TYPE_VIDEO' I = 4


.method public abstract checkArgs()Z
.end method

.method public abstract serialize(Landroid/os/Bundle;)V
.end method

.method public abstract type()I
.end method

.method public abstract unserialize(Landroid/os/Bundle;)V
.end method
