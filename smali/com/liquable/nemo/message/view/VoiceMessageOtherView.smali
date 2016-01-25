.class public Lcom/liquable/nemo/message/view/VoiceMessageOtherView;
.super Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;
.source "VoiceMessageOtherView.java"


# instance fields
.field voiceMessageView:Lcom/liquable/nemo/message/view/VoiceMessageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "isOneToOne"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/liquable/nemo/message/view/AbstractMediaMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    .line 20
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 24
    new-instance v0, Lcom/liquable/nemo/message/view/VoiceMessageView;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/VoiceMessageOtherView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/VoiceMessageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/VoiceMessageOtherView;->voiceMessageView:Lcom/liquable/nemo/message/view/VoiceMessageView;

    .line 25
    iget-object v0, p0, Lcom/liquable/nemo/message/view/VoiceMessageOtherView;->voiceMessageView:Lcom/liquable/nemo/message/view/VoiceMessageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    return-void
.end method

.method protected onThumbnailClicked(Landroid/content/Context;Lcom/liquable/nemo/message/model/AbstractMediaMessage;Ljava/io/File;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    .param p3, "mediaFile"    # Ljava/io/File;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/liquable/nemo/message/view/VoiceMessageOtherView;->voiceMessageView:Lcom/liquable/nemo/message/view/VoiceMessageView;

    invoke-virtual {v0, p1, p3}, Lcom/liquable/nemo/message/view/VoiceMessageView;->onThumbnailClicked(Landroid/content/Context;Ljava/io/File;)V

    .line 33
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 37
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/VoiceMessage;

    .line 38
    .local v0, "voiceMessage":Lcom/liquable/nemo/message/model/VoiceMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/VoiceMessageOtherView;->voiceMessageView:Lcom/liquable/nemo/message/view/VoiceMessageView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/VoiceMessageView;->update(Lcom/liquable/nemo/message/model/VoiceMessage;)V

    .line 39
    return-void
.end method
