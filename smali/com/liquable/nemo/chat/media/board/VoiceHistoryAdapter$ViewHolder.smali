.class Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "VoiceHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field linearLayout:Landroid/view/View;

.field voiceDurationTextView:Landroid/widget/TextView;

.field voiceTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$1;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/VoiceHistoryAdapter$ViewHolder;-><init>()V

    return-void
.end method
