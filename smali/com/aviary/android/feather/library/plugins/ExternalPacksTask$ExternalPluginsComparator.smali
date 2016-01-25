.class Lcom/aviary/android/feather/library/plugins/ExternalPacksTask$ExternalPluginsComparator;
.super Ljava/lang/Object;
.source "ExternalPacksTask.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/plugins/ExternalPacksTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExternalPluginsComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/aviary/android/feather/library/plugins/ExternalType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/aviary/android/feather/library/plugins/ExternalType;Lcom/aviary/android/feather/library/plugins/ExternalType;)I
    .locals 2
    .param p1, "lhs"    # Lcom/aviary/android/feather/library/plugins/ExternalType;
    .param p2, "rhs"    # Lcom/aviary/android/feather/library/plugins/ExternalType;

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getOrder()I

    move-result v0

    invoke-virtual {p2}, Lcom/aviary/android/feather/library/plugins/ExternalType;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/aviary/android/feather/library/plugins/ExternalType;

    check-cast p2, Lcom/aviary/android/feather/library/plugins/ExternalType;

    invoke-virtual {p0, p1, p2}, Lcom/aviary/android/feather/library/plugins/ExternalPacksTask$ExternalPluginsComparator;->compare(Lcom/aviary/android/feather/library/plugins/ExternalType;Lcom/aviary/android/feather/library/plugins/ExternalType;)I

    move-result v0

    return v0
.end method
