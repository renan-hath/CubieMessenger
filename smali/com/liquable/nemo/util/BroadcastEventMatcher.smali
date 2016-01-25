.class public Lcom/liquable/nemo/util/BroadcastEventMatcher;
.super Ljava/lang/Object;
.source "BroadcastEventMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matchExtraFileTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/android/service/ExtraFileType;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extraFileType"    # Lcom/liquable/nemo/android/service/ExtraFileType;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/liquable/nemo/util/BroadcastEventMatcher;->matchExtraFileTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/android/service/ExtraFileType;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)Z

    move-result v0

    return v0
.end method

.method public static matchExtraFileTransferEvent(Landroid/content/Intent;Lcom/liquable/nemo/android/service/ExtraFileType;Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extraFileType"    # Lcom/liquable/nemo/android/service/ExtraFileType;
    .param p2, "extraFileTransferEvent"    # Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .prologue
    const/4 v1, 0x0

    .line 20
    const-string/jumbo v2, "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v1

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/liquable/nemo/android/service/ExtraFileType;->name()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    const-string/jumbo v2, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .line 29
    .local v0, "event":Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
    if-eqz p2, :cond_2

    if-ne p2, v0, :cond_0

    .line 32
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static varargs matchUrlFileTransferCompleteEvent(Landroid/content/Intent;[Lcom/liquable/nemo/util/urlimage/UrlFileType;)Z
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "urlFileTypes"    # [Lcom/liquable/nemo/util/urlimage/UrlFileType;

    .prologue
    const/4 v2, 0x0

    .line 37
    const-string/jumbo v3, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.ACTION_NAME"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v2

    .line 41
    :cond_1
    const/4 v1, 0x0

    .line 42
    .local v1, "urlFileTypeMatched":Z
    array-length v4, p1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, p1, v3

    .line 43
    .local v0, "urlFileType":Lcom/liquable/nemo/util/urlimage/UrlFileType;
    invoke-virtual {v0}, Lcom/liquable/nemo/util/urlimage/UrlFileType;->name()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "com.liquable.nemo.util.urlimage.UrlFileTransferEvent.TYPE"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 44
    const/4 v1, 0x1

    .line 48
    .end local v0    # "urlFileType":Lcom/liquable/nemo/util/urlimage/UrlFileType;
    :cond_2
    if-eqz v1, :cond_0

    .line 52
    sget-object v2, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;

    const-string/jumbo v3, "com.liquable.nemo.KEY_EVENT_CODE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/urlimage/UrlFileTransferEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 42
    .restart local v0    # "urlFileType":Lcom/liquable/nemo/util/urlimage/UrlFileType;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
