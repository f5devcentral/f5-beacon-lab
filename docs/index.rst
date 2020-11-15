Beacon Bacon Lab
================

Deploy and explore an example application (**The Bacon App**) within F5 Beacon. Work through various sections which focus on workflows that you will encounter while leveraging F5 Beacon. Use Beacons app-centric approach to reduce Mean-time-to-Innosense (MTTI) and Mean-time-to-Know(MTTK). Create and configure application models, ingest various types of data/metrics, build dashbaords, and identify problems in your environment.

Sections
========

#. :doc:`lab_setup`
#. :doc:`overview`
#. :doc:`modules/scenarios` (MTTI / MTTK examples)
#. :doc:`modules/configure_ingest`
#. Automate deployments and updates (TBD)


Diagrams
========

Application Architecture
------------------------

Everything below is setup automatically as the lab boots except for DNSLB. This will be added as an addition to the lab in the future pending your F5CS account also having access to this service.

|bacon_app|


App Beacon Data Ingestion
-------------------------

Metric data is currently ingested into Beacon through various mechanisms listed below:

- Beacon Synthetic Monitors
- Telemetry Streaming
- Telegraf

|bacon_ingest|

.. toctree::
   :hidden:
   :maxdepth: 1
   :glob:

   lab_setup
   overview
   modules/scenarios
   modules/configure_ingest

.. |beacon| image:: images/beacon.png
    :scale: 30 %
.. |bacon_ingest| image:: images/bacon_ingest.drawio.jpg
    :width: 100 %
.. |bacon_app| image:: images/bacon_app.drawio.jpg
    :width: 100 %

.. |signup| raw:: html

   <a href="https://portal.cloudservices.f5.com/register?subscribe=c-aacHacMCM8" target="_blank">here</a>

