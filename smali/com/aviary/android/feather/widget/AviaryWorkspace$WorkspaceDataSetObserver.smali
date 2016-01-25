.class Lcom/aviary/android/feather/widget/AviaryWorkspace$WorkspaceDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AviaryWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/AviaryWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WorkspaceDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/AviaryWorkspace;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/AviaryWorkspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/AviaryWorkspace;

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/aviary/android/feather/widget/AviaryWorkspace$WorkspaceDataSetObserver;->this$0:Lcom/aviary/android/feather/widget/AviaryWorkspace;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 1424
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 1425
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 1429
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1430
    return-void
.end method
