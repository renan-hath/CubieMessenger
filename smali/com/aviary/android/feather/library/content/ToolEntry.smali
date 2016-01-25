.class public final Lcom/aviary/android/feather/library/content/ToolEntry;
.super Ljava/lang/Object;
.source "ToolEntry.java"


# instance fields
.field public iconResourceId:I

.field public labelResourceId:I

.field public name:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;II)V
    .locals 0
    .param p1, "effectId"    # Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;
    .param p2, "iconId"    # I
    .param p3, "labelId"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/aviary/android/feather/library/content/ToolEntry;->name:Lcom/aviary/android/feather/library/filters/FilterLoaderFactory$Filters;

    .line 31
    iput p2, p0, Lcom/aviary/android/feather/library/content/ToolEntry;->iconResourceId:I

    .line 32
    iput p3, p0, Lcom/aviary/android/feather/library/content/ToolEntry;->labelResourceId:I

    .line 33
    return-void
.end method
