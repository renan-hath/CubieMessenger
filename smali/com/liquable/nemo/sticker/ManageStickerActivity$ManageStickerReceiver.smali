.class Lcom/liquable/nemo/sticker/ManageStickerActivity$ManageStickerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ManageStickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/sticker/ManageStickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ManageStickerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/sticker/ManageStickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/sticker/ManageStickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/sticker/ManageStickerActivity;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity$ManageStickerReceiver;->this$0:Lcom/liquable/nemo/sticker/ManageStickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    sget-object v0, Lcom/liquable/nemo/android/service/ExtraFileType;->STICKER_CATEGORY_THUMBNAIL:Lcom/liquable/nemo/android/service/ExtraFileType;

    sget-object v1, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-static {p2, v0, v1}, Lcom/liquable/nemo/util/BroadcastEventMatcher;->matchExtraFileTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/android/service/ExtraFileType;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/liquable/nemo/sticker/ManageStickerActivity$ManageStickerReceiver;->this$0:Lcom/liquable/nemo/sticker/ManageStickerActivity;

    iget-object v0, v0, Lcom/liquable/nemo/sticker/ManageStickerActivity;->adapter:Lcom/liquable/nemo/sticker/ManageStickerAdapter;

    invoke-virtual {v0}, Lcom/liquable/nemo/sticker/ManageStickerAdapter;->notifyDataSetChanged()V

    .line 36
    :cond_0
    return-void
.end method
