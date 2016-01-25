.class Lcom/liquable/nemo/chat/ChattingActivity$14$1;
.super Lcom/liquable/nemo/util/SendTextAsyncTask;
.source "ChattingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/ChattingActivity$14;->onSendBtnClicked(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/SendTextAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field final synthetic val$numberOfPaintSticker:I

.field final synthetic val$numberOfPaintText:I


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/ChattingActivity$14;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/chat/ChattingActivity$14;

    .prologue
    .line 881
    iput-object p1, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

    iput p2, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->val$numberOfPaintText:I

    iput p3, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->val$numberOfPaintSticker:I

    iput-object p4, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->val$compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {p0}, Lcom/liquable/nemo/util/SendTextAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 884
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$14;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/WidgetManager;->isSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    new-instance v4, Lcom/liquable/nemo/analytics/PictureParameters;

    invoke-direct {v4}, Lcom/liquable/nemo/analytics/PictureParameters;-><init>()V

    .line 886
    .local v4, "pictureParameters":Lcom/liquable/nemo/analytics/PictureParameters;
    sget-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->with_text:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/liquable/nemo/analytics/PictureParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    sget-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->with_paint:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/liquable/nemo/analytics/PictureParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    sget-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->num_paint_text:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    iget v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->val$numberOfPaintText:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/liquable/nemo/analytics/PictureParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    sget-object v0, Lcom/liquable/nemo/analytics/PictureParameters$Key;->num_paint_sticker:Lcom/liquable/nemo/analytics/PictureParameters$Key;

    iget v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->val$numberOfPaintSticker:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/liquable/nemo/analytics/PictureParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;->paint:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;

    new-array v2, v5, [Lcom/liquable/nemo/group/model/ChatGroup;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

    iget-object v3, v3, Lcom/liquable/nemo/chat/ChattingActivity$14;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 892
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v3}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;->chat:Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;

    .line 891
    invoke-interface/range {v0 .. v5}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendSecretPictureMessage(Lcom/liquable/nemo/analytics/IAnalyticsService$ShareSecretPictureFrom;Ljava/util/List;Lcom/liquable/nemo/analytics/IAnalyticsService$ShareMediaVia;Lcom/liquable/nemo/analytics/PictureParameters;I)V

    .line 897
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

    iget-object v1, v1, Lcom/liquable/nemo/chat/ChattingActivity$14;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

    iget-object v2, v2, Lcom/liquable/nemo/chat/ChattingActivity$14;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 899
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->val$compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 897
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendPaintAsSecretPictureMessages(Landroid/content/Context;Lcom/liquable/nemo/group/model/ChatGroup;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 908
    .end local v4    # "pictureParameters":Lcom/liquable/nemo/analytics/PictureParameters;
    :goto_0
    return-object v0

    .line 904
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

    iget-object v1, v1, Lcom/liquable/nemo/chat/ChattingActivity$14;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    .line 905
    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v1}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/liquable/nemo/group/model/ChatGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->val$numberOfPaintText:I

    iget v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->val$numberOfPaintSticker:I

    invoke-interface {v0, v1, v2, v3}, Lcom/liquable/nemo/analytics/IAnalyticsService;->chattingSendPaintMessage(III)V

    .line 908
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->chattingManager:Lcom/liquable/nemo/chat/model/ChattingManager;

    new-array v1, v5, [Lcom/liquable/nemo/group/model/ChatGroup;

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

    iget-object v2, v2, Lcom/liquable/nemo/chat/ChattingActivity$14;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;
    invoke-static {v2}, Lcom/liquable/nemo/chat/ChattingActivity;->access$800(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/group/model/ChatGroup;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->val$compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1, v2, v3}, Lcom/liquable/nemo/chat/model/ChattingManager;->sendPaintMessages(Ljava/util/List;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 881
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 918
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$14;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->removeDialog(I)V

    .line 919
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$14;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->get(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)Lcom/liquable/nemo/chat/widget/ChattingWidget;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/paint/PaintWidget;

    invoke-virtual {v0}, Lcom/liquable/nemo/chat/paint/PaintWidget;->clear()V

    .line 926
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$14;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    # getter for: Lcom/liquable/nemo/chat/ChattingActivity;->widgetManager:Lcom/liquable/nemo/chat/WidgetManager;
    invoke-static {v0}, Lcom/liquable/nemo/chat/ChattingActivity;->access$900(Lcom/liquable/nemo/chat/ChattingActivity;)Lcom/liquable/nemo/chat/WidgetManager;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;->PAINT:Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/WidgetManager;->toggleWidget(Lcom/liquable/nemo/chat/widget/ChattingWidget$Widget;)V

    .line 927
    return-void

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$14;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    iget-object v1, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

    iget-object v1, v1, Lcom/liquable/nemo/chat/ChattingActivity$14;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const v2, 0x7f0d0497

    .line 923
    invoke-virtual {v1, v2}, Lcom/liquable/nemo/chat/ChattingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    .line 922
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 924
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 881
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/liquable/nemo/chat/ChattingActivity$14$1;->this$1:Lcom/liquable/nemo/chat/ChattingActivity$14;

    iget-object v0, v0, Lcom/liquable/nemo/chat/ChattingActivity$14;->this$0:Lcom/liquable/nemo/chat/ChattingActivity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/chat/ChattingActivity;->showDialog(I)V

    .line 933
    return-void
.end method
