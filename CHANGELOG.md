workareactl 1.2.1 (2021-03-24)
--------------------------------------------------------------------------------

*   Improve error when failing to launch editor on secrets/proxy commands.


workareactl 1.2.0 (2021-03-09)
--------------------------------------------------------------------------------

*   Improvements

    Add git sha to the status command
    Fix rake command with permissions and errors in output
    Improve output on code-pipeline when AWS has an error triggering code pipeline.


workareactl 1.1.1 (2021-03-03)
--------------------------------------------------------------------------------

*   Update to work with Kubernetes versions 1.16+


workareactl 1.1.0 (2021-02-02)
--------------------------------------------------------------------------------

*   Update for code pipeline

    Remove the release and rollback commands and add commands for interacting with
    code pipepline deploys including support for listing recent runs, getting the
    logs for a run and rerunning from the last commit.


workareactl 1.0.0 (2021-02-01)
--------------------------------------------------------------------------------

*   Initial release workareactl

    New CLI for interacting with Workarea Commerce Cloud environments.
    Utilizes single sign-on for authentication and improved speed.
