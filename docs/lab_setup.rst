Lab Overview and Setup
======================

.. NOTE:: UDF will deploy the infrastructure and app containers on boot. Follow the steps below to connect the lab to your F5 Beacon account.

Steps
-----

#. Open your browser tab for the UDF deployment that you have running.

#. On the Control machine login to **VSCODE** under `Access Methods`.

   * Password will be **3eaconlab**

   |

   |control_vscode|

#. If you do not see a terminal located at the bottom of the screen enable it using the menu.

   |enable_term|


   |terminal|

#. To allow the lab to provision your Beacon account we need to update enviornment variables with your F5CS information. Update the following commands with your information and paste them into the terminal.

   .. NOTE:: You may recieve a popup when pasting into VSCODE that looks like the image below, make sure to select **Allow** in order to use the clipboard.
      |allowpaste|

   You can retrieve your F5CS account ID by navigating to **Accounts** and copying it from the URI in the browser as below
   |acctid|

   .. code:: shell
   
      export BEACON_UN='username'
      export BEACON_PW='password'
      export BEACON_ACCT='acctid'



#. Run the ``lab_setup.sh`` scenario to configure your Beacon account and update the infrastructure with a token to send Telemetry metrics to Beacon. Below is a summary of what will be created:

   * F5 Beacon Data Ingest Token
   * Add the Ingest Token to **Telemetry Streaming** on BIG-IP
   * Update the EAST/WEST telegraf data collectors with the Ingest Token to send metrics to F5 Beacon
   * Model the **Bacon** application in F5 Beacon
   * Create Insights
   * Create Beacon Synthetic Monitors
   * Create Metric Health Conditions on components

   |

   Run the following Command:

   .. code:: shell

      ~/f5-beacon-lab/scenarios/lab_setup.sh


   All Tasks should come back as **ok** or **changed**:

   |beacon_conf_run|

Your environment should now be setup to begin the lab.


.. |control_vscode| image:: images/lab_setup/control_vscode.png
.. |enable_term| image:: images/lab_setup/enable_term.png
.. |terminal| image:: images/lab_setup/terminal.png
.. |vars_tree| image:: images/lab_setup/vars_tree.png
.. |east_url| image:: images/lab_setup/east_url.png
.. |west_url| image:: images/lab_setup/west_url.png
.. |vars_update| image:: images/lab_setup/vars_update.png
.. |beacon_conf_run| image:: images/lab_setup/beacon_conf_run.png
.. |acctid| image:: images/lab_setup/acctid.png
.. |allowpaste| image:: images/lab_setup/allowpaste.png