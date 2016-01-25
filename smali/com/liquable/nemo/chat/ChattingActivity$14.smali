.class Lcom/liquable/nemo/chat/ChattingActivity$14;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Lcom/liquable/nemo/chat/paint/PaintWidget$OnSendBtnClicked;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity;->initPaintWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/ChattingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/ChattingActivity;

    .prologue
    .line 875
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$14;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendBtnClicked(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;II)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p3, "numberOfPaintText"    # I
    .param p4, "numberOfPaintSticker"    # I

    .prologue
    .line 881
    new-instance v0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/chat/ChattingActivity$14$1;-><init>(Lcom/liquable/nemo/chat/ChattingActivity$14;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 937
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->execute([Ljava/lang/Object;)V

    .line 938
    return-void
.end method
