.class public Lcom/liquable/nemo/chat/ChattingAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChattingAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private isOneToOne:Z

.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final onLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final onMsgSettinBtnClick:Landroid/view/View$OnClickListener;

.field private unreadMessageStartIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onMsgSettinBtnClick"    # Landroid/view/View$OnClickListener;
    .param p4, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->unreadMessageStartIndex:I

    .line 128
    iput-object p2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 129
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    .line 130
    iput-object p3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onMsgSettinBtnClick:Landroid/view/View$OnClickListener;

    .line 131
    iput-object p4, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 132
    return-void
.end method

.method private createView(Lcom/liquable/nemo/message/model/DomainMessage;)Lcom/liquable/nemo/message/view/AbstractMessageView;
    .locals 7
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 152
    instance-of v0, p1, Lcom/liquable/nemo/message/model/TextMessage;

    if-eqz v0, :cond_1

    .line 153
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Lcom/liquable/nemo/message/view/TextMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/TextMessageSelfView;-><init>(Landroid/content/Context;)V

    .line 282
    :goto_0
    return-object v0

    .line 156
    :cond_0
    new-instance v0, Lcom/liquable/nemo/message/view/TextMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/TextMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto :goto_0

    .line 157
    :cond_1
    instance-of v0, p1, Lcom/liquable/nemo/message/model/LikePictureMessage;

    if-eqz v0, :cond_3

    .line 158
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    new-instance v0, Lcom/liquable/nemo/message/view/LikePictureMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/LikePictureMessageSelfView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 161
    :cond_2
    new-instance v0, Lcom/liquable/nemo/message/view/LikePictureMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/message/view/LikePictureMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;ZLandroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 162
    :cond_3
    instance-of v0, p1, Lcom/liquable/nemo/message/model/SecretTextMessage;

    if-eqz v0, :cond_5

    .line 163
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 164
    new-instance v0, Lcom/liquable/nemo/message/view/SecretTextMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/SecretTextMessageSelfView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 166
    :cond_4
    new-instance v0, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/SecretTextMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto :goto_0

    .line 167
    :cond_5
    instance-of v0, p1, Lcom/liquable/nemo/message/model/SecretPictureMessage;

    if-eqz v0, :cond_7

    .line 168
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    new-instance v0, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/view/SecretPictureMessageSelfView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    goto :goto_0

    .line 171
    :cond_6
    new-instance v0, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/SecretPictureMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto :goto_0

    .line 172
    :cond_7
    instance-of v0, p1, Lcom/liquable/nemo/message/model/PaintMessage;

    if-eqz v0, :cond_9

    .line 173
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 174
    new-instance v0, Lcom/liquable/nemo/message/view/PaintMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onMsgSettinBtnClick:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/message/view/PaintMessageSelfView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 179
    :cond_8
    new-instance v0, Lcom/liquable/nemo/message/view/PaintMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onMsgSettinBtnClick:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    iget-boolean v5, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/message/view/PaintMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Z)V

    goto/16 :goto_0

    .line 184
    :cond_9
    instance-of v0, p1, Lcom/liquable/nemo/message/model/StickerMessage;

    if-eqz v0, :cond_b

    .line 185
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 186
    new-instance v0, Lcom/liquable/nemo/message/view/StickerMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/StickerMessageSelfView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 188
    :cond_a
    new-instance v0, Lcom/liquable/nemo/message/view/StickerMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/StickerMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto/16 :goto_0

    .line 189
    :cond_b
    instance-of v0, p1, Lcom/liquable/nemo/message/model/CustomStickerMessage;

    if-eqz v0, :cond_d

    .line 190
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 191
    new-instance v0, Lcom/liquable/nemo/message/view/CustomStickerMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/view/CustomStickerMessageSelfView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    goto/16 :goto_0

    .line 193
    :cond_c
    new-instance v0, Lcom/liquable/nemo/message/view/CustomStickerMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/CustomStickerMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto/16 :goto_0

    .line 194
    :cond_d
    instance-of v0, p1, Lcom/liquable/nemo/message/model/PictureMessage;

    if-eqz v0, :cond_11

    move-object v6, p1

    .line 195
    check-cast v6, Lcom/liquable/nemo/message/model/PictureMessage;

    .line 196
    .local v6, "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    invoke-virtual {v6}, Lcom/liquable/nemo/message/model/PictureMessage;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 197
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 198
    new-instance v0, Lcom/liquable/nemo/message/view/PictureMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/view/PictureMessageSelfView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    goto/16 :goto_0

    .line 200
    :cond_e
    new-instance v0, Lcom/liquable/nemo/message/view/PictureMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/PictureMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto/16 :goto_0

    .line 202
    :cond_f
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 203
    new-instance v0, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/PictureMessageSelfBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 205
    :cond_10
    new-instance v0, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    iget-boolean v4, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/message/view/PictureMessageOtherBigView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    goto/16 :goto_0

    .line 207
    .end local v6    # "pictureMessage":Lcom/liquable/nemo/message/model/PictureMessage;
    :cond_11
    instance-of v0, p1, Lcom/liquable/nemo/message/model/VoiceMessage;

    if-eqz v0, :cond_13

    .line 208
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 209
    new-instance v0, Lcom/liquable/nemo/message/view/VoiceMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/VoiceMessageSelfView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 211
    :cond_12
    new-instance v0, Lcom/liquable/nemo/message/view/VoiceMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/VoiceMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto/16 :goto_0

    .line 212
    :cond_13
    instance-of v0, p1, Lcom/liquable/nemo/message/model/FileMessage;

    if-eqz v0, :cond_15

    .line 213
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 214
    new-instance v0, Lcom/liquable/nemo/message/view/FileMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/FileMessageSelfView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 216
    :cond_14
    new-instance v0, Lcom/liquable/nemo/message/view/FileMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/FileMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto/16 :goto_0

    .line 217
    :cond_15
    instance-of v0, p1, Lcom/liquable/nemo/message/model/CallLogMessage;

    if-eqz v0, :cond_17

    .line 218
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 219
    new-instance v0, Lcom/liquable/nemo/message/view/CallLogMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/CallLogMessageSelfView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 221
    :cond_16
    new-instance v0, Lcom/liquable/nemo/message/view/CallLogMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/CallLogMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto/16 :goto_0

    .line 222
    :cond_17
    instance-of v0, p1, Lcom/liquable/nemo/message/model/MissedCallMessage;

    if-eqz v0, :cond_18

    .line 223
    new-instance v0, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/MissedCallMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto/16 :goto_0

    .line 224
    :cond_18
    instance-of v0, p1, Lcom/liquable/nemo/message/model/AddChatGroupMemberMessage;

    if-eqz v0, :cond_19

    .line 225
    new-instance v0, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/view/AddChatGroupMemberMessageView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    goto/16 :goto_0

    .line 226
    :cond_19
    instance-of v0, p1, Lcom/liquable/nemo/message/model/LeaveChatGroupMessage;

    if-eqz v0, :cond_1a

    .line 227
    new-instance v0, Lcom/liquable/nemo/message/view/LeaveChatGroupMessageView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/LeaveChatGroupMessageView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 228
    :cond_1a
    instance-of v0, p1, Lcom/liquable/nemo/message/model/RemoveChatGroupMemberMessage;

    if-eqz v0, :cond_1b

    .line 229
    new-instance v0, Lcom/liquable/nemo/message/view/RemoveChatGroupMemberMessageView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/RemoveChatGroupMemberMessageView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 230
    :cond_1b
    instance-of v0, p1, Lcom/liquable/nemo/message/model/UpdateGroupIconMessage;

    if-eqz v0, :cond_1c

    .line 231
    new-instance v0, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/view/UpdateGroupIconMessageView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    goto/16 :goto_0

    .line 232
    :cond_1c
    instance-of v0, p1, Lcom/liquable/nemo/message/model/CreateChatGroupMessage;

    if-eqz v0, :cond_1d

    .line 233
    new-instance v0, Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/view/CreateChatGroupMessageView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    goto/16 :goto_0

    .line 234
    :cond_1d
    instance-of v0, p1, Lcom/liquable/nemo/message/model/UpdateGroupNameMessage;

    if-eqz v0, :cond_1e

    .line 235
    new-instance v0, Lcom/liquable/nemo/message/view/UpdateGroupNameMessageView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/UpdateGroupNameMessageView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 236
    :cond_1e
    instance-of v0, p1, Lcom/liquable/nemo/message/model/AudioMessage;

    if-eqz v0, :cond_20

    .line 237
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 238
    new-instance v0, Lcom/liquable/nemo/message/view/AudioMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/view/AudioMessageSelfView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    goto/16 :goto_0

    .line 240
    :cond_1f
    new-instance v0, Lcom/liquable/nemo/message/view/AudioMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/AudioMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto/16 :goto_0

    .line 241
    :cond_20
    instance-of v0, p1, Lcom/liquable/nemo/message/model/VideoMessage;

    if-eqz v0, :cond_22

    .line 242
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 243
    new-instance v0, Lcom/liquable/nemo/message/view/VideoMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/VideoMessageSelfView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 245
    :cond_21
    new-instance v0, Lcom/liquable/nemo/message/view/VideoMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/message/view/VideoMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;ZLandroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 246
    :cond_22
    instance-of v0, p1, Lcom/liquable/nemo/message/model/LocationMessage;

    if-eqz v0, :cond_24

    .line 247
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 248
    new-instance v0, Lcom/liquable/nemo/message/view/LocationMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/LocationMessageSelfView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 250
    :cond_23
    new-instance v0, Lcom/liquable/nemo/message/view/LocationMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    iget-boolean v4, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/message/view/LocationMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V

    goto/16 :goto_0

    .line 251
    :cond_24
    instance-of v0, p1, Lcom/liquable/nemo/message/model/AskPictureMessage;

    if-eqz v0, :cond_26

    .line 252
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 253
    new-instance v0, Lcom/liquable/nemo/message/view/AskPictureMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/AskPictureMessageSelfView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 255
    :cond_25
    new-instance v0, Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/AskPictureMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto/16 :goto_0

    .line 256
    :cond_26
    instance-of v0, p1, Lcom/liquable/nemo/message/model/AskLocationMessage;

    if-eqz v0, :cond_28

    .line 257
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 258
    new-instance v0, Lcom/liquable/nemo/message/view/AskLocationMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/AskLocationMessageSelfView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 260
    :cond_27
    new-instance v0, Lcom/liquable/nemo/message/view/AskLocationMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/AskLocationMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto/16 :goto_0

    .line 261
    :cond_28
    instance-of v0, p1, Lcom/liquable/nemo/message/model/YoutubeMessage;

    if-eqz v0, :cond_2a

    .line 262
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 263
    new-instance v0, Lcom/liquable/nemo/message/view/YoutubeMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/YoutubeMessageSelfView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 265
    :cond_29
    new-instance v0, Lcom/liquable/nemo/message/view/YoutubeMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/liquable/nemo/message/view/YoutubeMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;ZLandroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 266
    :cond_2a
    instance-of v0, p1, Lcom/liquable/nemo/message/model/OpenApiAppMessage;

    if-eqz v0, :cond_2c

    .line 267
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 268
    new-instance v0, Lcom/liquable/nemo/message/view/OpenApiAppMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/view/OpenApiAppMessageSelfView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;)V

    goto/16 :goto_0

    .line 270
    :cond_2b
    new-instance v0, Lcom/liquable/nemo/message/view/OpenApiAppMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/OpenApiAppMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto/16 :goto_0

    .line 271
    :cond_2c
    instance-of v0, p1, Lcom/liquable/nemo/message/model/PubChannelMessage;

    if-eqz v0, :cond_2e

    .line 272
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 273
    new-instance v0, Lcom/liquable/nemo/message/view/PubChannelMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/PubChannelMessageSelfView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 275
    :cond_2d
    new-instance v0, Lcom/liquable/nemo/message/view/PubChannelMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/PubChannelMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto/16 :goto_0

    .line 278
    :cond_2e
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/liquable/nemo/message/model/DomainMessage;->isSender(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 279
    new-instance v0, Lcom/liquable/nemo/message/view/UnknownMessageSelfView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/liquable/nemo/message/view/UnknownMessageSelfView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 282
    :cond_2f
    new-instance v0, Lcom/liquable/nemo/message/view/UnknownMessageOtherView;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-boolean v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/liquable/nemo/message/view/UnknownMessageOtherView;-><init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Z)V

    goto/16 :goto_0
.end method

.method private enableDateDividerIfRequired(ILcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/message/view/AbstractMessageView;)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;
    .param p3, "messageView"    # Lcom/liquable/nemo/message/view/AbstractMessageView;

    .prologue
    .line 302
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/liquable/nemo/message/view/AbstractMessageView;->setDateDividerVisibility(I)V

    .line 303
    if-lez p1, :cond_0

    .line 304
    invoke-virtual {p2}, Lcom/liquable/nemo/message/model/DomainMessage;->getReceiveTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v0

    .line 305
    .local v0, "currentDate":I
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/message/model/DomainMessage;

    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/DomainMessage;->getReceiveTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v1

    .line 306
    .local v1, "prevDate":I
    if-ne v0, v1, :cond_0

    .line 307
    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Lcom/liquable/nemo/message/view/AbstractMessageView;->setDateDividerVisibility(I)V

    .line 310
    .end local v0    # "currentDate":I
    .end local v1    # "prevDate":I
    :cond_0
    return-void
.end method

.method private findIndexOfDomaingMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)I
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private static getItemViewType(Lcom/liquable/nemo/message/model/IDomainMessage;)Lcom/liquable/nemo/message/model/MessageItemViewType;
    .locals 1
    .param p0, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 107
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/liquable/nemo/message/model/IDomainMessage;->getItemViewType(Ljava/lang/String;)Lcom/liquable/nemo/message/model/MessageItemViewType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAll(ILjava/util/List;Z)V
    .locals 1
    .param p1, "position"    # I
    .param p3, "isOneToOne"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    iput-boolean p3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    .line 136
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 137
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 138
    return-void
.end method

.method public addMessage(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 1
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 145
    :cond_0
    return-void
.end method

.method public clearUnreadMessageStartIndex()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->setUnreadMessageStartIndex(I)V

    .line 149
    return-void
.end method

.method public deleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/IDomainMessage;

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->findIndexOfDomaingMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)I

    move-result v0

    .line 287
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 297
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 291
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->clearUnreadMessageStartIndex()V

    .line 295
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 296
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 292
    :cond_2
    if-ltz v0, :cond_1

    iget v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->unreadMessageStartIndex:I

    if-ge v0, v1, :cond_1

    .line 293
    iget v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->unreadMessageStartIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/ChattingAdapter;->setUnreadMessageStartIndex(I)V

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 328
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/IDomainMessage;

    .line 334
    .local v0, "message":Lcom/liquable/nemo/message/model/IDomainMessage;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->getItemViewType(Lcom/liquable/nemo/message/model/IDomainMessage;)Lcom/liquable/nemo/message/model/MessageItemViewType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/MessageItemViewType;->getItemViewType()I

    move-result v1

    return v1
.end method

.method public getUnreadMessageStartIndex()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->unreadMessageStartIndex:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 343
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 347
    .local v0, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    if-nez p2, :cond_0

    .line 348
    invoke-direct {p0, v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->createView(Lcom/liquable/nemo/message/model/DomainMessage;)Lcom/liquable/nemo/message/view/AbstractMessageView;

    move-result-object v1

    .line 349
    .local v1, "messageView":Lcom/liquable/nemo/message/view/AbstractMessageView;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/view/AbstractMessageView;->init()V

    .line 354
    :goto_0
    invoke-virtual {v1, v0}, Lcom/liquable/nemo/message/view/AbstractMessageView;->update(Lcom/liquable/nemo/message/model/DomainMessage;)V

    .line 355
    invoke-direct {p0, p1, v0, v1}, Lcom/liquable/nemo/chat/ChattingAdapter;->enableDateDividerIfRequired(ILcom/liquable/nemo/message/model/DomainMessage;Lcom/liquable/nemo/message/view/AbstractMessageView;)V

    .line 357
    iget v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->unreadMessageStartIndex:I

    if-ne p1, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/message/view/AbstractMessageView;->setUnreadMessageTagVisibility(I)V

    .line 360
    return-object v1

    .end local v1    # "messageView":Lcom/liquable/nemo/message/view/AbstractMessageView;
    :cond_0
    move-object v1, p2

    .line 351
    check-cast v1, Lcom/liquable/nemo/message/view/AbstractMessageView;

    .restart local v1    # "messageView":Lcom/liquable/nemo/message/view/AbstractMessageView;
    goto :goto_0

    .line 357
    :cond_1
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 365
    invoke-static {}, Lcom/liquable/nemo/message/model/MessageItemViewType;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public initItemTansferState(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/storage/aws/RemoteKeyPath;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "downloadKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    .local p2, "uploadKeyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/storage/aws/RemoteKeyPath;>;"
    const/4 v6, 0x0

    .line 375
    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 376
    .local v3, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    instance-of v5, v3, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    if-eqz v5, :cond_0

    move-object v2, v3

    .line 380
    check-cast v2, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .line 382
    .local v2, "mediaMessage":Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getAllRemoteKeyPaths()Ljava/util/List;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/liquable/util/CollectionsLean;->containsAny(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 383
    invoke-virtual {v2, v6}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->updateTransferAsTransfering(I)V

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getAllRemoteKeyPaths()Ljava/util/List;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/liquable/util/CollectionsLean;->containsAny(Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 385
    invoke-virtual {v2, v6}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->updateTransferAsTransfering(I)V

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->getAssetLocalKeyPath()Lcom/liquable/nemo/storage/LocalKeyPath;

    move-result-object v0

    .line 388
    .local v0, "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->nemoFileService:Lcom/liquable/nemo/storage/NemoFileService;

    invoke-virtual {v0, v5}, Lcom/liquable/nemo/storage/LocalKeyPath;->toFile(Lcom/liquable/nemo/storage/NemoFileService;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/liquable/nemo/util/Files;->exists(Ljava/io/File;)Z

    move-result v1

    .line 389
    .local v1, "fileExists":Z
    sget-object v5, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v5}, Lcom/liquable/nemo/util/Pref;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->isSender(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 390
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->isSystemAck()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    .line 391
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->updateTransferAsComplete()V

    goto :goto_0

    .line 393
    :cond_3
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->updateTransferAsPending()V

    goto :goto_0

    .line 396
    :cond_4
    if-eqz v1, :cond_5

    .line 397
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->updateTransferAsComplete()V

    goto :goto_0

    .line 399
    :cond_5
    invoke-virtual {v2}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->updateTransferAsPending()V

    goto :goto_0

    .line 404
    .end local v0    # "assetLocalKeyPath":Lcom/liquable/nemo/storage/LocalKeyPath;
    .end local v1    # "fileExists":Z
    .end local v2    # "mediaMessage":Lcom/liquable/nemo/message/model/AbstractMediaMessage;
    .end local v3    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_6
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 405
    return-void
.end method

.method public insertAllMessages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 409
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 410
    .local v0, "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 414
    .end local v0    # "domainMessage":Lcom/liquable/nemo/message/model/DomainMessage;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 415
    return-void
.end method

.method public offsetUnreadMessageStartIndex(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 418
    iget v0, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->unreadMessageStartIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 422
    :goto_0
    return-void

    .line 421
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->unreadMessageStartIndex:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/chat/ChattingAdapter;->setUnreadMessageStartIndex(I)V

    goto :goto_0
.end method

.method public replaceItem(Lcom/liquable/nemo/message/model/DomainMessage;)V
    .locals 2
    .param p1, "message"    # Lcom/liquable/nemo/message/model/DomainMessage;

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->findIndexOfDomaingMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)I

    move-result v0

    .line 429
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 431
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 433
    :cond_0
    return-void
.end method

.method public reset(Ljava/util/List;Z)V
    .locals 1
    .param p2, "isOneToOne"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/message/model/DomainMessage;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, "newMessages":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 437
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/liquable/nemo/chat/ChattingAdapter;->addAll(ILjava/util/List;Z)V

    .line 438
    return-void
.end method

.method public setUnreadMessageStartIndex(I)V
    .locals 0
    .param p1, "unreadMessageStartIndex"    # I

    .prologue
    .line 441
    iput p1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->unreadMessageStartIndex:I

    .line 442
    return-void
.end method

.method public transferComplete(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 4
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 445
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 446
    .local v1, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    instance-of v3, v1, Lcom/liquable/nemo/message/model/IMediaMessage;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 447
    check-cast v0, Lcom/liquable/nemo/message/model/IMediaMessage;

    .line 448
    .local v0, "mediaMessage":Lcom/liquable/nemo/message/model/IMediaMessage;
    invoke-interface {v0}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAllRemoteKeyPaths()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    check-cast v1, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .end local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->updateTransferAsComplete()V

    goto :goto_0

    .line 453
    .end local v0    # "mediaMessage":Lcom/liquable/nemo/message/model/IMediaMessage;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 454
    return-void
.end method

.method public transferFailed(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;)V
    .locals 4
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;

    .prologue
    .line 457
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 458
    .local v1, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    instance-of v3, v1, Lcom/liquable/nemo/message/model/IMediaMessage;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 459
    check-cast v0, Lcom/liquable/nemo/message/model/IMediaMessage;

    .line 460
    .local v0, "mediaMessage":Lcom/liquable/nemo/message/model/IMediaMessage;
    invoke-interface {v0}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAllRemoteKeyPaths()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    check-cast v1, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .end local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->updateTransferAsPending()V

    goto :goto_0

    .line 465
    .end local v0    # "mediaMessage":Lcom/liquable/nemo/message/model/IMediaMessage;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 466
    return-void
.end method

.method public trim(I)V
    .locals 4
    .param p1, "messagesLeft"    # I

    .prologue
    .line 469
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 476
    :goto_0
    return-void

    .line 473
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p1

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    .line 474
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 473
    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean v1, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->isOneToOne:Z

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/chat/ChattingAdapter;->reset(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public updateSecretMessages()Z
    .locals 5

    .prologue
    .line 479
    const/4 v3, 0x0

    .line 480
    .local v3, "updated":Z
    iget-object v4, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 481
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/liquable/nemo/message/model/DomainMessage;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 482
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 483
    .local v1, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    instance-of v4, v1, Lcom/liquable/nemo/message/model/ISecret;

    if-eqz v4, :cond_0

    move-object v2, v1

    .line 484
    check-cast v2, Lcom/liquable/nemo/message/model/ISecret;

    .line 485
    .local v2, "secretMessage":Lcom/liquable/nemo/message/model/ISecret;
    sget-object v4, Lcom/liquable/nemo/message/model/ISecret$State;->SEALED:Lcom/liquable/nemo/message/model/ISecret$State;

    invoke-interface {v2, v4}, Lcom/liquable/nemo/message/model/ISecret;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 488
    sget-object v4, Lcom/liquable/nemo/message/model/ISecret$State;->EXPIRED:Lcom/liquable/nemo/message/model/ISecret$State;

    invoke-interface {v2, v4}, Lcom/liquable/nemo/message/model/ISecret;->isState(Lcom/liquable/nemo/message/model/ISecret$State;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 489
    sget-object v4, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    invoke-virtual {v4, v2}, Lcom/liquable/nemo/chat/model/ChattingManager;->deleteMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)V

    .line 491
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 494
    .end local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v2    # "secretMessage":Lcom/liquable/nemo/message/model/ISecret;
    :cond_2
    return v3
.end method

.method public updateStickerPackageTransferComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 498
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 499
    .local v0, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    instance-of v3, v0, Lcom/liquable/nemo/message/model/StickerMessage;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 500
    check-cast v1, Lcom/liquable/nemo/message/model/StickerMessage;

    .line 501
    .local v1, "stickerMessage":Lcom/liquable/nemo/message/model/StickerMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/StickerMessage;->getPackageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/StickerMessage;->updateTransferAsComplete()V

    goto :goto_0

    .line 508
    .end local v0    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v1    # "stickerMessage":Lcom/liquable/nemo/message/model/StickerMessage;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 509
    return-void
.end method

.method public updateStickerPackageTransferFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageCode"    # Ljava/lang/String;

    .prologue
    .line 511
    return-void
.end method

.method public updateStickerTransferComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "stickerCode"    # Ljava/lang/String;

    .prologue
    .line 514
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 515
    .local v0, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    instance-of v3, v0, Lcom/liquable/nemo/message/model/StickerMessage;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 516
    check-cast v1, Lcom/liquable/nemo/message/model/StickerMessage;

    .line 517
    .local v1, "stickerMessage":Lcom/liquable/nemo/message/model/StickerMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/StickerMessage;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 518
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/StickerMessage;->updateTransferAsComplete()V

    goto :goto_0

    .line 522
    .end local v0    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v1    # "stickerMessage":Lcom/liquable/nemo/message/model/StickerMessage;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 523
    return-void
.end method

.method public updateStickerTransferFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "stickerCode"    # Ljava/lang/String;

    .prologue
    .line 525
    return-void
.end method

.method public updateStickerTransferProgress(Ljava/lang/String;I)V
    .locals 4
    .param p1, "stickerCategory"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 528
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 529
    .local v0, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    instance-of v3, v0, Lcom/liquable/nemo/message/model/StickerMessage;

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 530
    check-cast v1, Lcom/liquable/nemo/message/model/StickerMessage;

    .line 531
    .local v1, "stickerMessage":Lcom/liquable/nemo/message/model/StickerMessage;
    invoke-virtual {v1}, Lcom/liquable/nemo/message/model/StickerMessage;->getPackageCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 532
    invoke-virtual {v1, p2}, Lcom/liquable/nemo/message/model/StickerMessage;->updateTransferAsTransfering(I)V

    goto :goto_0

    .line 536
    .end local v0    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    .end local v1    # "stickerMessage":Lcom/liquable/nemo/message/model/StickerMessage;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 537
    return-void
.end method

.method public updateTransferProgress(Lcom/liquable/nemo/storage/aws/RemoteKeyPath;I)V
    .locals 4
    .param p1, "remoteKeyPath"    # Lcom/liquable/nemo/storage/aws/RemoteKeyPath;
    .param p2, "progress"    # I

    .prologue
    .line 540
    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingAdapter;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/message/model/DomainMessage;

    .line 541
    .local v1, "message":Lcom/liquable/nemo/message/model/DomainMessage;
    instance-of v3, v1, Lcom/liquable/nemo/message/model/IMediaMessage;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 542
    check-cast v0, Lcom/liquable/nemo/message/model/IMediaMessage;

    .line 543
    .local v0, "mediaMessage":Lcom/liquable/nemo/message/model/IMediaMessage;
    invoke-interface {v0}, Lcom/liquable/nemo/message/model/IMediaMessage;->getAllRemoteKeyPaths()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    check-cast v1, Lcom/liquable/nemo/message/model/AbstractMediaMessage;

    .end local v1    # "message":Lcom/liquable/nemo/message/model/DomainMessage;
    invoke-virtual {v1, p2}, Lcom/liquable/nemo/message/model/AbstractMediaMessage;->updateTransferAsTransfering(I)V

    goto :goto_0

    .line 548
    .end local v0    # "mediaMessage":Lcom/liquable/nemo/message/model/IMediaMessage;
    :cond_1
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 549
    return-void
.end method

.method public updateVoiceMessage(Lcom/liquable/nemo/message/model/VoiceMessage;ZZ)V
    .locals 3
    .param p1, "message"    # Lcom/liquable/nemo/message/model/VoiceMessage;
    .param p2, "isPlaying"    # Z
    .param p3, "isPreparing"    # Z

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/liquable/nemo/chat/ChattingAdapter;->findIndexOfDomaingMessage(Lcom/liquable/nemo/message/model/IDomainMessage;)I

    move-result v1

    .line 555
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 556
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/chat/ChattingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/VoiceMessage;

    .line 557
    .local v0, "found":Lcom/liquable/nemo/message/model/VoiceMessage;
    if-eqz p3, :cond_1

    .line 558
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/liquable/nemo/message/model/VoiceMessage;->setPreparing(Z)V

    .line 562
    :goto_0
    invoke-virtual {p0}, Lcom/liquable/nemo/chat/ChattingAdapter;->notifyDataSetChanged()V

    .line 564
    .end local v0    # "found":Lcom/liquable/nemo/message/model/VoiceMessage;
    :cond_0
    return-void

    .line 560
    .restart local v0    # "found":Lcom/liquable/nemo/message/model/VoiceMessage;
    :cond_1
    invoke-virtual {v0, p2}, Lcom/liquable/nemo/message/model/VoiceMessage;->setPlaying(Z)V

    goto :goto_0
.end method
