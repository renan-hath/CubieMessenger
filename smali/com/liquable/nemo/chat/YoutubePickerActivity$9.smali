.class Lcom/liquable/nemo/chat/YoutubePickerActivity$9;
.super Landroid/os/AsyncTask;
.source "YoutubePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/YoutubePickerActivity;->trimCacheDir()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$9;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 580
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 583
    invoke-static {}, Lcom/liquable/nemo/util/FileCacheManager;->trimTempDir()V

    .line 584
    const/4 v0, 0x0

    return-object v0
.end method
