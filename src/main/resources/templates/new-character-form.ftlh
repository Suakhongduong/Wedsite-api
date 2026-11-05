<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Agent - Valorant Protocol</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Navigation Menu -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="index.html">VALORANT PROTOCOL</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="index.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="details.html">Details</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
                    <li class="nav-item"><a class="nav-link active" href="new-character-form.html">Add a Character</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container my-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card character-card shadow">
                    <div class="card-header text-white" style="background-color: #ff4655;">
                        <h3 class="card-title mb-0 fw-bold">Recruit a New Agent</h3>
                    </div>
                    <div class="card-body p-4">
                        <form onsubmit="return false;">
                            <div class="mb-3">
                                <label for="charName" class="form-label">Agent Name</label>
                                <input type="text" class="form-control" id="charName" placeholder="e.g. ISO, Clove">
                            </div>
                            <div class="mb-3">
                                <label for="charUniverse" class="form-label">Universe / Origin Country</label>
                                <input type="text" class="form-control" id="charUniverse" placeholder="e.g. China, Scotland">
                            </div>
                            <div class="mb-3">
                                <label for="charRole" class="form-label">Role</label>
                                <select class="form-select" id="charRole">
                                    <option selected disabled>Select agent role...</option>
                                    <option value="Duelist">Duelist</option>
                                    <option value="Initiator">Initiator</option>
                                    <option value="Controller">Controller</option>
                                    <option value="Sentinel">Sentinel</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="charImageUrl" class="form-label">Official Art Image URL</label>
                                <input type="url" class="form-control" id="charImageUrl" placeholder="https://images.contentstack.io/...">
                            </div>
                            <div class="mb-3">
                                <label for="charDesc" class="form-label">Short Description & Abilities</label>
                                <textarea class="form-control" id="charDesc" rows="4" placeholder="Enter tactical summary and abilities..."></textarea>
                            </div>
                            <button type="button" class="btn btn-primary w-100">Add Agent to Roster</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>