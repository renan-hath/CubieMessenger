.class public Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/staggerd/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 0
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 98
    iput p2, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterContextMenuInfo;->position:I

    .line 99
    iput-wide p3, p0, Lcom/liquable/nemo/staggerd/StaggeredGridView$AdapterContextMenuInfo;->id:J

    .line 100
    return-void
.end method
