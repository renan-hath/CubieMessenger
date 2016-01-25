.class public Lcom/liquable/nemo/message/view/VoiceMessageSelfView;
.super Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;
.source "VoiceMessageSelfView.java"


# instance fields
.field voiceMessageView:Lcom/liquable/nemo/message/view/VoiceMessageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/liquable/nemo/message/view/AbstractMediaMessageSelfView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method initBubbleBody(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 21
    new-instance v0, Lcom/liquable/nemo/message/view/VoiceMessageView;

    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/VoiceMessageSelfView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/VoiceMessageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/message/view/VoiceMessageSelfView;->voiceMessageView:Lcom/liquable/nemo/message/view/VoiceMessageView;

    .line 22
    iget-object v0, p0, Lcom/liquable/nemo/message/view/VoiceMessageSelfView;->voiceMessageView:Lcom/liquable/nemo/message/view/VoiceMessageView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 23
    return-void
.end method

.method protected onThumbnailClicked(Landroid/content/Context;Lcom/liquable/nemo/message/model/AbstractMediaMessage;Ljava/io/File;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    .param p3, "mediaFile"    # Ljava/io/File;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/message/view/VoiceMessageSelfView;->voiceMessageView:Lcom/liquable/nemo/message/view/VoiceMessageView;

    invoke-virtual {v0, p1, p3}, Lcom/liquable/nemo/message/view/VoiceMessageView;->onThumbnailClicked(Landroid/content/Context;Ljava/io/File;)V

    .line 30
    return-void
.end method

.method updateBubbleBody(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 34
    move-object v0, p1

    check-cast v0, Lcom/liquable/nemo/message/model/VoiceMessage;

    .line 35
    .local v0, "voiceMessage":Lcom/liquable/nemo/message/model/VoiceMessage;
    iget-object v1, p0, Lcom/liquable/nemo/message/view/VoiceMessageSelfView;->voiceMessageView:Lcom/liquable/nemo/message/view/VoiceMessageView;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/VoiceMessageView;->update(Lcom/liquable/nemo/message/model/VoiceMessage;)V

    .line 36
    return-void
.end method
