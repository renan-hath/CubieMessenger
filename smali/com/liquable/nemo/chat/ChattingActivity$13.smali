.class Lcom/liquable/nemo/chat/ChattingActivity$13;
.super Ljava/lang/Object;
.source "ChattingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 857
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$13;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x280

    const/16 v2, 0x1e0

    .line 860
    invoke-static {}, Lcom/liquable/nemo/chat/paint/PaintWidget;->getTempPictureFile()Ljava/io/File;

    move-result-object v7

    .line 862
    .local v7, "tempPictureFile":Ljava/io/File;
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$13;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 867
    invoke-virtual {v3}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move v3, v1

    move v4, v2

    .line 862
    invoke-static/range {v0 .. v7}, Lcom/liquable/nemo/util/crop/CropImageActivity;->createStartActivityIntent(Landroid/app/Activity;IIIILjava/lang/String;ZLjava/io/File;)Landroid/content/Intent;

    move-result-object v8

    .line 870
    .local v8, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "ADD_BG_COLOR"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 871
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$13;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    sget-object v1, Lcom/liquable/nemo/chat/ChattingRequestCode;->PASTE_PICTURE_ON_SKETCH:Lcom/liquable/nemo/chat/ChattingRequestCode;

    invoke-virtual {v1}, Lcom/liquable/nemo/chat/ChattingRequestCode;->ordinal()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 872
    return-void
.end method
