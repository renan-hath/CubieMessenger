.class Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AudioHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field artist:Landroid/widget/TextView;

.field audioTitle:Landroid/widget/TextView;

.field linearLayout:Landroid/widget/LinearLayout;

.field thumbnail:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$1;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/liquable/nemo/chat/media/board/AudioHistoryAdapter$ViewHolder;-><init>()V

    return-void
.end method
